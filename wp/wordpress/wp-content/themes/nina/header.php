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

  <div class="p-menu">
    <nav>
      <ul class="p-menu__item--primary">
        <li>
          <a href="<?php echo home_url() ?>">ホーム</a>
        </li>
        <li>
          <a href="<?php echo home_url() ?>/about">ニナ・アーキタイプとは</a>
        </li>

        <li>
          <a href="<?php echo home_url() ?>/service">サービス</a>
          <ul class="p-menu__item--secondary">
            <li><a href="<?php echo home_url() ?>/service/design">UIデザイン</a></li>
            <li><a href="<?php echo home_url() ?>/service/responsive">レスポンシブデザイン</a></li>
            <li><a href="<?php echo home_url() ?>/service/support">ウェブコンサルティング</a></li>
            <li></li>
          </ul>
        </li>

        <li>
          <a href="<?php echo home_url() ?>/flow">お仕事のながれ</a>
        </li>

        <li>
          <a href="<?php echo home_url() ?>/price">料金について</a>
        </li>
      </ul>
      <p class="p-menu__cta c-btn--secondary--orange">
        <a href="<?php echo home_url() ?>#">COMMING SOON</a>
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