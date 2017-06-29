<?php 
/**
 * Custom Export-Import
 * Author: Vladimir S. <guyasyou@gmail.com>
 * www.SiteCreate54.ru
 * © 2016
 */

namespace Concrete\Package\CustomExportImport;
use Package;
use SinglePage;

defined('C5_EXECUTE') or die(_("Access Denied."));

class Controller extends Package {

	protected $pkgHandle = 'custom_export_import';
	protected $appVersionRequired = '5.7.5.2';
	protected $pkgVersion = '1.1.4';

    public function getPackageName() {
		return t("Custom Export-Import");
	}

	public function getPackageDescription() {
		return t("Creates backups pages and import them.");
	}

    public function on_start() {
        //Assets
        $al = \Concrete\Core\Asset\AssetList::getInstance();

        //JS
        $al->register(
            'javascript', //asset type
            'custom_export_import/sitemap', //asset name
            'js/sitemap.js', //path
            array(),
            'custom_export_import' //from package
        );

        $al->register(
            'javascript', //asset type
            'custom_export_import/dynatree', //asset name
            'js/dynatree.js', //path
            array(),
            'custom_export_import' //from package
        );

        $al->registerGroup('custom_export_import/sitemap', array(
            array('javascript', 'core/events'),
            array('javascript', 'underscore'),
            array('javascript', 'backbone'),
            array('javascript', 'jquery/ui'),
            array('javascript-localized', 'jquery/ui'),
            array('javascript', 'custom_export_import/dynatree'),
            array('javascript-localized', 'dynatree'),
            array('javascript-localized', 'core/localization'),
            array('javascript', 'core/app'),
            array('javascript', 'custom_export_import/sitemap', array('minify' => false)),
            array('css', 'dynatree'),
            array('css', 'core/sitemap')
        ));
    }

    private function getSinglePages() {
        return array(
            //------------------------------------------//
            //-------------Dashboard pages--------------//
            //------------------------------------------//
            '/dashboard/custom_export_import' => array(
                'cName' => $this->getPackageName(),
                'cDesc' => $this->getPackageDescription()
            )
        );
    }

    public function install() {
        /** @var $pkg \Concrete\Core\Package\Package() */
        $pkg = parent::install();

		//install single pages
        foreach ($this->getSinglePages() as $path => $params) {
            $single_page = SinglePage::add($path, $pkg);
            if ($single_page) {
                $single_page->update(array('cName'=>$params['cName'], 'cDescription'=>$params['cDesc']));
                if ($params['exclude_nav']) {
                    $single_page->setAttribute('exclude_nav', 1);
                }
            }
        }

	}

}