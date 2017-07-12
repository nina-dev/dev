<?php
namespace Application\Theme\nina;
use Concrete\Core\Page\Theme\Theme;
class PageTheme extends Theme
{
	protected $pThemeGridFrameworkHandle = 'bootstrap3';

	public function registerAssets()
	{
		$this->requireAsset('css', 'font-awesome');
		$this->requireAsset('javascript', 'jquery');
	}
}