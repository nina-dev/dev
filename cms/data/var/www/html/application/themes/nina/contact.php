<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

<div class="l-content--lower">

  <div class="l-contact">

    <p class="l-contact__ttl c-contentTtl--secondary">お問い合わせ</p>
    <h2 class="l-contact__cache">2営業日以内にご返答のご連絡をお返しします</h2>

    <div class="l-contact__text">
      <p class="l-contact__text__col">お仕事に関するお見積もり依頼・サービスについてのご質問、ご相談など、お気軽にお問い合わせください。 </p>
    </div>

    <div class="l-contact__inner">
    <?php
    $a = new Area('Content');
    $a->enableGridContainer();
    $a->display($c);
    ?>
    </div>
  </div>
</div>

<?php
$this->inc('elements/footer_contact.php');
?>
