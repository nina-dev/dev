<!DOCTYPE html>
<html>
<head>
  <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  <meta content="all" name="robots">

  <title><?php wp_title('｜', true, 'right'); ?><?php bloginfo('name'); ?></title>
  <link href="<?php echo get_stylesheet_directory_uri(); ?>/css/index.min.css" rel="stylesheet">

  <?php
  wp_head();
  ?>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-P4RW8FT');</script>
<!-- End Google Tag Manager -->

</head>
<body>

<?php if( is_home() || is_front_page() ){ ?>

  <div class="l-loading">
    <div class="c-loading">
      <div class="c-loading__item--1"></div>
      <div class="c-loading__item--2"></div>
      <div class="c-loading__item--3"></div>
      <div class="c-loading__item--4"></div>
      <div class="c-loading__item--5"></div>
    </div>
  </div>

  <?php } ?>

  <?php get_template_part('/template_parts/p-menu' ); ?>

  <div class="l-container">
    <header class="l-header">
      <div class="l-header__ttl">
        <div class="l-header__ttl__inner">
          <h1>ニナ・アーキタイプはWeb / iOS / Androidに対するユーザーインターフェイスを提供するフリーランスのUIデザイナーです</h1>
        </div>
      </div>

      <div class="l-header__info">
        <div class="l-header__info__item--left">
          <a href="<?php echo home_url() ?>">
            <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/common/logo.png">
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
          <a href="<?php echo home_url() ?>">
            <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/common/logo.png">
          </a>
        </div>
        <div class="l-header__info__item--right--fixed c-humberger type-1">
          <span class="top"></span>
          <span class="middle"></span>
          <span class="bottom"></span>
        </div>
      </div>
    </header>