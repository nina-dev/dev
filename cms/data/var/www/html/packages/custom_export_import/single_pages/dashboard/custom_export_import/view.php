<?php 
/**
 * Custom Export-Import
 * Author: Vladimir S. <guyasyou@gmail.com>
 * www.SiteCreate54.ru
 * © 2016
 */
defined('C5_EXECUTE') or die("Access Denied.");
$sh = Loader::helper('concrete/dashboard/sitemap'); ?>
<div class="alert alert-warning"><?php echo t('Attention! Import does not replace existing pages, it duplicates the content. Before importing remove pages that are going to import.')?></div>

<h3><?php echo t('Backups')?></h3>
<div class="row">
    <div class="col-md-12">
        <?php 
        if (is_array($backups) && count($backups) > 0) {
            ?><ul class="list-group"><?php 
            foreach ($backups as $backup) { ?>
                <li class="list-group-item">
                    <span><?php echo $backup->name?></span>
                    <a href="<?php echo $backup->url?>" target="_blank" class="btn btn-info btn-xs" download><i class="fa fa-download"></i> <?php echo t('Download')?></a>
                    <a href="<?php  echo $this->action('restore_backup') .'?'. $token->getParameter('restore_backup') .'&backup='. $backup->name?>" class="btn btn-primary btn-xs" onclick="return confirmAction('<?php echo t('Restore this backup?');?>')"><i class="fa fa-database"></i> <?php echo t('Restore')?></a>
                    <a href="<?php  echo $this->action('remove_backup') .'?'. $token->getParameter('remove_backup') .'&backup='. $backup->name?>" class="btn btn-danger btn-xs" onclick="return confirmAction('<?php echo t('Delete backup file?');?>')"><i class="fa fa-trash-o"></i> <?php echo t('Remove')?></a>
                </li><?php 
            }
            ?></ul><?php 
        } else { ?>
            <span><?php echo t('Backups not founds')?></span><?php 
        }
        ?>
    </div>
</div>


<?php 
if ($sh->canRead()) { ?>
<hr/>
<h3><?php echo t('Select pages for export')?></h3>
<form id="multiple-select-pages" method="post" class="form-horizontal" action="<?php  echo $this->action('confirm') ?>">
    <?php  echo $token->output('confirm'); ?>

    <div class="ccm-dashboard-content-full">

        <style type="text/css">
            div#ccm-full-sitemap-container {
                margin-left: 95px;
            }
        </style>


        <?php  $u = new User();
        if ($u->isSuperUser()) {
            if (Queue::exists('copy_page')) {
                $q = Queue::get('copy_page');
                if ($q->count() > 0) { ?>

                    <div class="alert alert-warning">
                        <?php  echo t('Page copy operations pending.')?>
                        <button class="btn btn-xs btn-default pull-right" onclick="ConcreteSitemap.refreshCopyOperations()"><?php  echo t('Resume Copy')?></button>
                    </div>

                <?php  }
            }

        } ?>

        <div id="ccm-full-sitemap-container"></div>

    </div>

    <?php  echo $form->submit('export', t('Export'), array('class' => 'btn btn-primary export-submit-btn'))?>
    <?php  echo $form->submit('delete', t('Delete'), array('class' => 'btn btn-danger delete-submit-btn'))?>

</form>
<script type="text/javascript">
    function confirmAction(question) {
        if (confirm(question)) {
            return true;
        } else {
            return false;
        }
    }

    function reloadAllChildren(node) {
        node.reloadChildren(function() {
            node.expand();
            node.select(false);
            node.select(true); //it run onSelectNode()->reloadAllChildren() = recursion;
        });
    }

    function getSelectedNodes(withParents) {
        if (withParents) {
            functionName = 'getSelectedNodesWithParents';
        } else {
            functionName = 'getSelectedNodes';
        }

        return $.map($('div#ccm-full-sitemap-container').dynatree(functionName), function(node){
            return node.data.cID;
        });
    }

    function sendToConfirm(action, selectedKeys, modalTitle, btnText) {
        var token = $("input[name='ccm_token']").val();
        var formDataArray = { "ccm_token" : token };
        $.each(selectedKeys, function(index, cID){
            formDataArray["cID["+index+"]"] = cID;
        });
        formDataArray['btnText'] = btnText;
        $.ajax({
            method: "POST",
            url: $('#multiple-select-pages').attr('action')+'/'+action,
            data: $.param( formDataArray )
        })
            .done(function( msg ) {
                $.fn.dialog.open({
                    title: modalTitle,
                    width: 600,
                    height: 400,
                    element: $(msg),
                    onOpen: function(){
                        $('.confirm-form').on('submit', function(e){
                            $('.loading-area').html('');
                            $('.loading-area').html('<i class="fa fa-spinner fa-spin"></i> <?php echo t('Wait, it may take a few minutes')?>');
                        })
                    }
                });
            });
    }

    $( document ).ready(function() {
        $('div#ccm-full-sitemap-container').concreteSitemap({
            selectMode:"hierarchical-multiple",
            onSelectNode: function(node, flag){
                if (flag && (node.childList == undefined )) {
                    reloadAllChildren(node);
                } else if (flag && node.bExpanded) {
                    $(node.childList).each(function(index, element){
                        if ($(element.span).hasClass("dynatree-has-children")) {
                            reloadAllChildren(element);
                        }
                    });
                }
            }
        });

        $('.export-submit-btn').on("click", function( event ) {
            event.preventDefault();
            var btnText = '<?php echo t('Export')?>';
            var modalTitle = '<?php echo t('Export this pages?')?>';
            var selectedKeys = getSelectedNodes(true);

            sendToConfirm('export', selectedKeys,  modalTitle, btnText);
        });

        $('.delete-submit-btn').on("click", function( event ) {
            event.preventDefault();
            var btnText = '<?php echo t('Delete')?>';
            var modalTitle = '<?php echo t('Delete this pages?')?>';
            var selectedKeys = getSelectedNodes();

            sendToConfirm('delete', selectedKeys,  modalTitle, btnText);
        });
    });
</script>


<hr/>
<h3><?php echo t('Upload backup file for import')?></h3>
<form id="import-file-form" action="<?php echo  $this->action('import') ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
    <?php  echo $token->output('import'); ?>
    <div class="col-md-12">
        <div class="form-group">
            <label for="import-file"><?php echo t('Backup XML file')?></label>
            <input type="file" id="import-file" data-max-size="<?php echo $maxUploadSize?>" name="import-file" required="required"/>
            <mark class=""><?php echo t('Max uload file size %s', $maxUploadSizeString)?></mark>
            <script type="text/javascript">
                $(function(){
                    var fileInput = $('#import-file');
                    var maxSize = fileInput.data('max-size');
                    $('#import-file-form').submit(function(e){
                        if(fileInput.get(0).files.length){
                            var fileSize = fileInput.get(0).files[0].size; // in bytes
                            if(fileSize>maxSize){
                                alert('File size is more then ' + maxSize + ' bytes!');
                                return false;
                            }else{
                                return true;
                            }
                        } else {
                            return false;
                        }

                    });
                });
            </script>
        </div>
        <div class="form-group">
            <input type="submit" name="import" value="<?php echo t('Import')?>" class="btn btn-primary" />
        </div>
    </div>

</form>

<div style="clear: both"></div>

<p class="alert alert-warning" role="alert"><?php echo t('Export or import require a lot of resources. If you do not have rights to configure php, then you can not get keep within 30 seconds timeout.')?></p>
<p><?php echo t('Rights are required for this functions:')?>
<pre>
    ini_set("max_execution_time", 2000);
    ini_set('memory_limit', '-1');</pre>
</p>
<?php  } else { ?>

    <p><?php  echo t("You do not have access to the sitemap.");?></p>

<?php  } ?>
