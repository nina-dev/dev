<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

<div class="l-content--lower">

  <div class="l-contact">

    <p class="l-contact__ttl c-contentTtl--secondary">お問い合わせ</p>
    <h2 class="l-contact__cache">2営業日以内にご返答のご連絡をお返しします</h2>

    <div class="l-contact__text">

      <p class="l-contact__text__col">
        お仕事に関するお見積もり依頼・サービスについてのご質問、ご相談など、お気軽にお問い合わせください。
      </p>
    </div>

    <div class="l-contact__inner">

      <ul class="p-form">

        <li class="p-form__col">

          <!--ここのデザイン調整中-->

          <label for="category" class="c-form--select">
            <select name="" id="category">
              <option value="" selected>HTML</option>
              <option value="">CSS</option>
              <option value="">JavaScript</option>
              <option value="">IA</option>
              <option value="">UI</option>
              <option value="">UX</option>
            </select>
          </label>

          <!--ここのデザイン調整中-->

        </li>

        <li class="p-form__col">

          <div class="c-form">

            <label class="c-form--label">お名前<span class="c-form--tab--required">必須</span><span class="c-form--sampletext">最初は非表示でfocusしたらプレースフォルダー文言を表示させたい</span></label>
            <input class="c-form--text" type="text" name="">
            <p class="c-form--attention">エラー</p>


          </div>

        </li>

        <li class="p-form__col">

          <div class="c-form">

            <label class="c-form--label">メールアドレス<span class="c-form--tab--required">必須</span><span class="c-form--sampletext">最初は非表示でfocusしたらプレースフォルダー文言を表示させたい</span></label>
            <input class="c-form--text" type="text" name="">
            <p class="c-form--attention">エラー</p>


          </div>



        </li>

        <li class="p-form__col">

          <div class="c-form">

            <label class="c-form--label">お問い合わせ内容<span class="c-form--tab--any">必須</span></label>
            <textarea id="text" name="お問い合わせ内容" placeholder="お問い合わせ内容を入力してください"></textarea>

          </div>



        </li>

        <li class="p-form__col--btn c-cta__inner__btn c-btn--secondary--orange">

          <button type="submit">送信する</button>



        </li>


      </ul>
    </div>
  </div>
</div>


<div class="l-content--secondary">

  <div class="l-related">
    <p class="l-related__cache">あなたにオススメの記事</p>
    <p class="l-related__text--attention">当サイトは発信型メディアとして、近日リニューアルします。</p>
    <ul class="l-related__item">
      <li class="l-related__item__box c-thumbnail--largeborder">
        <p class="c-thumbnail--largeborder__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/01.jpg"></p>
        <p class="c-thumbnail--largeborder__item--ttl--related">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
      </li>
      <li class="l-related__item__box c-thumbnail--largeborder">
        <p class="c-thumbnail--largeborder__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/02.jpg"></p>
        <p class="c-thumbnail--largeborder__item--ttl--related">最近のお仕事でやっていることを公開します。</p>
      </li>
      <li class="l-related__item__box c-thumbnail--largeborder">
        <p class="c-thumbnail--largeborder__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/03.jpg"></p>
        <p class="c-thumbnail--largeborder__item--ttl--related">いまWebディレクターに求められる「解析提案力」</p>
      </li>
    </ul> 
  </div>

</div>

<?php
$this->inc('elements/footer_contact.php');
?>
