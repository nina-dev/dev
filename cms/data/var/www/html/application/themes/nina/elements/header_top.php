<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  <meta content="all" name="robots">

  <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath()?>/css/bootstrap-modified.css">
  <?php echo $html->css($view->getStylesheet('main.less'))?>
  <?php Loader::element('header_required', array('pageTitle' => isset($pageTitle) ? $pageTitle : ''));?>

  <script>
    if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
      var msViewportStyle = document.createElement('style')
      msViewportStyle.appendChild(
        document.createTextNode(
          '@-ms-viewport{width:auto!important}'
          )
        )
      document.querySelector('head').appendChild(msViewportStyle)
    }
  </script>

  <title>ニナ・アーキタイプ | フリーランスのUIデザイナー</title>

  <link href="<?php echo $this->getThemePath()?>/css/index.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

</head>
<body>
