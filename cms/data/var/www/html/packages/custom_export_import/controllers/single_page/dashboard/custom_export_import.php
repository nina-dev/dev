<?php 
/**
 * Custom Export-Import
 * Author: Vladimir S. <guyasyou@gmail.com>
 * www.SiteCreate54.ru
 * © 2016
 */

namespace Concrete\Package\CustomExportImport\Controller\SinglePage\Dashboard;
use Concrete\Core\Package\Package;
use \Concrete\Core\Page\Controller\DashboardPageController;
use Loader;
use Page;
use PageList;
use Concrete\Core\Backup\ContentExporter as BackupExport;
use Concrete\Core\Backup\ContentImporter as BackupImporter;
use DOMDocument;
use \Illuminate\Filesystem\Filesystem;

class CustomExportImport extends DashboardPageController {

    private function setPhpOptions() {
        ini_set("max_execution_time", 2000);
        ini_set('memory_limit', '-1');
    }

    public function view() {
        $this->requireAsset('custom_export_import/sitemap');

        $dh = Loader::helper('concrete/dashboard/sitemap');
        $this->set('includeSystemPages', $dh->includeSystemPages());

        $this->set('backups', $this->getBackups());
        $this->set('maxUploadSizeString', $this->file_upload_max_size(true));
        $this->set('maxUploadSize', $this->file_upload_max_size());
    }

    public function confirm($action) {
        if ($action == 'export') {
            $btnClass = 'btn-primary';
        } else if ($action == 'delete') {
            $btnClass = 'btn-danger';
        } else { ?>
            <div class="error"><?php echo t('Action is not valid!')?></div><?php 
        }

        if ($this->validation('confirm')) {
            $form = \Core::make('helper/form'); /** @var $form \Concrete\Core\Form\Service\Form */
            $cIDs = $this->post('cID');
            if (is_array($cIDs) && count($cIDs) > 0) { ?>

                <form class="confirm-form ccm-ui" method="post" action="<?php echo  $this->action($action) ?>" >
                    <?php  $this->token->output($action); ?>
                    <table class="table">
                        <tr>
                            <th><?php echo t('cID')?></th>
                            <th><?php echo t('Name')?></th>
                            <th><?php echo t('Path')?></th>
                            <th><?php echo t('Exclude')?></th>
                        </tr>
                        <?php 
                        foreach ($cIDs as $cID) {
                            $page = Page::getByID($cID);
                            $exclude = false;
                            $attributes = array();

                            //page is external link, exlude it
                            if ($page->cPointerExternalLink) {
                                $exclude = true;
                                $attributes = array("checked" => "checked");
                            }
                            ?>
                            <tr>
                                <td><?php echo $cID?></td>
                                <td><?php echo $page->getCollectionName()?></td>
                                <td><?php echo $page->getCollectionPath()?> <?php  if ($exclude) { echo '<span style="color: red;">('.t('external link').')</span>'; } ?></td>
                                <td class="text-right"><?php echo $form->checkbox('exclude[]', $cID, $exclude, $attributes)?></td>
                            </tr>
                            <?php 
                            echo $form->hidden('cID[]', $cID);
                        }

                        ?>

                        <tr>
                            <td colspan="4" class="text-right"><b><?php echo t('%s pages total', count($cIDs))?></b></td>
                        </tr>
                    </table>

                    <div class="buttons">
                        <style>
                            .loading-area {
                                font-size: 1.2em;
                                color: #FF5722;
                            }
                            .loading-area i {
                                font-size: 1.4em;
                            }
                        </style>
                        <span class="loading-area"></span>
                        <input type="submit" class="btn pull-right <?php echo $btnClass?>" id="submit" name="submit" value="<?php echo $this->post('btnText')?>">
                    </div>
                </form>
                
            <?php 
            } else { ?>
                <div class="error"><?php echo t('Pages is not selected!')?></div>
            <?php 
            }
        }

        exit;
    }

    public function export() {

        if ($this->validation('export')) {
            if (count($this->post('cID')) > 0) {
                $cIDs = $this->post('cID');
                $exclude = count($this->post('exclude')) ? $this->post('exclude') : array();

                $cIDs = array_diff($cIDs, $exclude); //cIDs without exclude pages

                if (count($cIDs) > 0) {

                    $this->setPhpOptions();

                    $pl = new PageList(); /** @var $pl \Concrete\Core\Page\PageList */
                    foreach ($cIDs as $key => $cID) {
                        $pl->getQueryObject()->orWhere('p.cID = :cID_'.$key);
                        $pl->getQueryObject()->setParameter('cID_'.$key, $cID);
                    }
                    $export = new BackupExport();
                    $export->exportPages(null, $pl);
                    $xml = $export->output();

                    //$this->forceDownloadXML($xml);
                    $this->saveXML($xml);

                } else {
                    $this->error->add(t('Pages is not selected!'));
                    $this->view();
                }

            } else {
                $this->error->add(t('Pages is not selected!'));
                $this->view();
            }

        } else {
            $this->view();
        }
    }

    public function delete() {
        if ($this->validation('delete')) {
            if (count($this->post('cID')) > 0) {
                $cIDs = $this->post('cID');
                $exclude = count($this->post('exclude')) ? $this->post('exclude') : array();

                $cIDs = array_diff($cIDs, $exclude); //cIDs without exclude pages

                if (count($cIDs) > 0) {

                    $this->setPhpOptions();

                    $pl = new PageList(); /** @var $pl \Concrete\Core\Page\PageList */
                    foreach ($cIDs as $key => $cID) {
                        $pl->getQueryObject()->orWhere('p.cID = :cID_'.$key);
                        $pl->getQueryObject()->setParameter('cID_'.$key, $cID);
                    }

                    $pages = $pl->get();
                    foreach ($pages as $page) {
                        $page->delete();
                    }

                    $this->set('message', t('Pages is deleted'));
                    $this->view();

                } else {
                    $this->error->add(t('Pages is not selected!'));
                    $this->view();
                }

            } else {
                $this->error->add(t('Pages is not selected!'));
                $this->view();
            }

        } else {
            $this->view();
        }
    }

    private function saveXML($xml) {
        $dom = new DOMDocument;
        $dom->preserveWhiteSpace = false;
        $dom->loadXML($xml);
        $dom->formatOutput = true;

        $name = strftime($this->getBackupDir().'/exported_pages_%d_%m_%Y_%H_%M_%S.xml');
        $dom->save($name);

        $this->set('message', t('Backup is created!'));
        $this->view();
    }

    private function forceDownloadXML($xml) {

        $dom = new DOMDocument;
        $dom->preserveWhiteSpace = false;
        $dom->loadXML($xml);
        $dom->formatOutput = true;

        $name = strftime('exported_pages_%d_%m_%Y_%H_%M_%S.xml');
        header('Content-Disposition: attachment;filename=' . $name);
        header('Content-Type: text/xml');

        echo $dom->saveXML();

        exit;

    }

    private function getBackupDir() {
        $fileSystem = new Filesystem();
        $path = DIR_FILES_UPLOADED_STANDARD.'/exported_pages';
        if (!$fileSystem->isDirectory($path)) {
            $fileSystem->makeDirectory($path);
        }
        return $path;
    }

    private function getBackupDirURL() {
        return REL_DIR_FILES_UPLOADED_STANDARD.'/exported_pages';
    }

    private function getBackups() {
        $backups = array();

        $path = $this->getBackupDir();
        $dirURL = $this->getBackupDirURL();

        $fileSystem = new Filesystem();
        $files = $fileSystem->files($path);
        if (count($files) > 0) {

            foreach ($files as $file) {
                $name = end(explode("/", $file)); //get filename from path
                $backup = new \StdClass();
                $backup->name = $name;
                $backup->path = $file;
                $backup->url = $this->getBackupDirURL().'/'.$name;

                $backups[] = $backup;
            }

        }
        return $backups;
    }

    public function remove_backup() {
        if ($this->validation('remove_backup')) {
            $dirPath = $this->getBackupDir();
            $backupFile = $dirPath.'/'.$_GET['backup'];
            $fileSystem = new Filesystem();
            if ($fileSystem->exists($backupFile)) {
                if ($fileSystem->delete($backupFile)) {
                    $this->set('message', t('Backup is removed!'));
                }
            } else {
                $this->error->add(t('Backup file not found!'));
            }
        }

        $this->view();
    }

    public function restore_backup() {
        if ($this->validation('restore_backup')) {
            $dirPath = $this->getBackupDir();
            $backupFile = $dirPath.'/'.$_GET['backup'];
            if (file_exists($backupFile)) {
                $this->importXmlFile($backupFile);
                $this->set('message', t('Import successfully'));
            } else {
                $this->error->add(t('Backup file not found!'));
            }
        }

        $this->view();
    }

    public function import() {
        if ($this->validation('import')) {

            $filename = $_FILES['import-file']['tmp_name'];
            $this->importXmlFile($filename);

            $this->set('message', t('Import successfully'));
        }

        $this->view();
    }

    private function importXmlFile($filename) {
        $this->setPhpOptions();

        $import = new BackupImporter();
        $import->importContentFile($filename);

        return true;
    }

    private function validation($action) {
        $val = new \Concrete\Core\Form\Service\Validation;

        $val->setData($this->post());
        $val->addRequiredToken($action);

        if (!$val->test()) {
            $val_errors = $val->getError()->getList();
            foreach ($val_errors as $val_error) {
                $this->error->add($val_error);
            }
        }

        if (!$this->error->has()) {
            return true;
        }

        return false;
    }

    private function file_upload_max_size($asString = false) {
        static $max_size = -1;

        if ($max_size < 0) {
            // Start with post_max_size.
            $max_size_readable = ini_get('post_max_size');
            $max_size = $this->parse_size($max_size_readable);

            // If upload_max_size is less, then reduce. Except if upload_max_size is
            // zero, which indicates no limit.
            $upload_max_readable = ini_get('upload_max_filesize');
            $upload_max = $this->parse_size($upload_max_readable);
            if ($upload_max > 0 && $upload_max < $max_size) {
                $max_size = $upload_max;
                $max_size_readable = $upload_max_readable;
            }
        }
        if ($asString) {
            return $max_size_readable;
        }

        return $max_size;
    }

    private function parse_size($size) {
        $unit = preg_replace('/[^bkmgtpezy]/i', '', $size); // Remove the non-unit characters from the size.
        $size = preg_replace('/[^0-9\.]/', '', $size); // Remove the non-numeric characters from the size.
        if ($unit) {
            // Find the position of the unit in the ordered string which is the power of magnitude to multiply a kilobyte by.
            return round($size * pow(1024, stripos('bkmgtpezy', $unit[0])));
        }
        else {
            return round($size);
        }
    }
}