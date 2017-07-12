<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

<div class="l-content--lower">


  <div class="l-service">

    <?php
    $a = new Area('Main');
    $a->enableGridContainer();
    $a->display($c);
    ?>

    <div class="l-service__inner">
      <ul class="l-service__inner__item">
        <?php
        $a = new Area('Content');
        $a->enableGridContainer();
        $a->display($c);
        ?>
      </ul>
    </div>

  </div>
</div>

<div class="l-content--secondary">

  <div class="p-related">

    <p class="p-related__cache">あなたにオススメの記事</p>
    <p class="p-related__text--attention">当サイトは発信型メディアとして、近日リニューアルします。</p>


    <ul class="p-related__item">

      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/01.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
      </li>
      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/02.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">最近のお仕事でやっていることを公開します。</p>
      </li>
      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/03.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">いまWebディレクターに求められる「解析提案力」</p>
      </li>


    </ul>
  </div>


</div>

<?php
$this->inc('elements/footer.php');
?>
