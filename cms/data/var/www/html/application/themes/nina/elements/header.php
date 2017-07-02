<?php defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<!DOCTYPE html>
<html>
<head>
  <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  <meta content="all" name="robots">

  <link href="<?php echo $this->getThemePath()?>/css/index.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>


<?php $this->requireAsset('javascript', 'jquery'); ?>
<?php Loader::element('header_required'); ?>

</head>
<body>

<?php
$u = new User();
if($u->isRegistered()) { ?>
<!-- ログイン時表示 -->
<div style="height: 47px;"></div>
<?php } ?>

<?php
$this->inc('elements/header_navi.php');
?>
	<div class="l-container">
		<div class="l-header">
			<div class="l-header__ttl">
				<div class="l-header__ttl__inner">
					<h1>
						<?php
						$a = new Area('Headline');
						$a->enableGridContainer();
						$a->display($c);
						?>
					</h1>
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
