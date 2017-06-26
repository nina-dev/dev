<?php defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header_top.php');
$as = new GlobalArea('Header Search');
$blocks = $as->getTotalBlocksInArea();
$displayThirdColumn = $blocks > 0 || $c->isEditMode();
?>

<div class="<?php if ($displayThirdColumn) { ?>col-sm-5 col-xs-6<?php } else { ?>col-sm-8 col-xs-6<?php } ?>">
	<?php
	$a = new GlobalArea('Header Navigation');
	$a->display();
	?>
</div>

<!-- 	<div class="l-loading">
		<div class="c-loading">
			<div class="c-loading__item--1"></div>
			<div class="c-loading__item--2"></div>
			<div class="c-loading__item--3"></div>
			<div class="c-loading__item--4"></div>
			<div class="c-loading__item--5"></div>
		</div>
	</div> -->

	<div class="p-menu">
		<nav>
			<ul class="p-menu__item--primary">
				<li>
					<a href="/">ホーム</a>
				</li>
				<li>
					<a href="/about">ニナ・アーキタイプとは</a>
				</li>

				<li>
					<a href="/service">得意なこと</a>
					<ul class="p-menu__item--secondary">
						<li><a href="/service/design">UIデザイン</a></li>
						<li><a href="/service/responsive">レスポンシブデザイン</a></li>
						<li><a href="/service/support">ウェブコンサルティング</a></li>
						<li></li>
					</ul>
				</li>

				<li>
					<a href="/flow">仕事の流れ</a>
				</li>

				<li>
					<a href="/price">料金について</a>
				</li>
			</ul>
			<p class="p-menu__cta c-btn--secondary--orange">
				<a href="#">COMMING SOON</a>
			</p>
		</nav>
	</div>

	<div class="l-container">
		<header class="l-header">
			<div class="l-header__ttl">
				<div class="l-header__ttl__inner">
					<h1>ニナ・アーキタイプはWeb / iOS / Androidに対するユーザーインターフェイスを提供するフリーランスのUIデザイナーです</h1>
				</div>
			</div>

			<div class="l-header__info">
				<div class="l-header__info__item--left">
					<a href="/">
						<img src="<?php echo $this->getThemePath()?>/img/common/logo.png">
					</a>
				</div>
				<div class="l-header__info__item--right c-humberger type-1">
					<span class="top"></span>
					<span class="middle"></span>
					<span class="bottom"></span>
				</div>
			</div>

			<div class="l-header__info--primary">
				<div class="l-header__info__item--left--fixed">
					<a href="/">
						<img src="<?php echo $this->getThemePath()?>/img/common/logo.png">
					</a>
				</div>
				<div class="l-header__info__item--right--fixed c-humberger type-1">
					<span class="top"></span>
					<span class="middle"></span>
					<span class="bottom"></span>
				</div>
			</div>
		</header>