<?php
/*
Template Name: お問い合わせ
*/
?>

<?php get_header(); ?>

<div class="l-content--lower">
  <div class="l-contact">
    <p class="l-contact__ttl c-contentTtl--secondary">お問い合わせ</p>
    <h2 class="l-contact__cache">2営業日以内にご返答のご連絡をお返しします</h2>
    <div class="l-contact__text">
      <p class="l-contact__text__col">お仕事に関するお見積もり依頼・サービスについてのご質問、ご相談など、お気軽にお問い合わせください。 </p>
    </div>
    <div class="l-contact__inner">
      <ul class="p-form">
        <li class="p-form__col c-form--select">
          <span class="c-form--tab--any">任意</span>
          <label class="c-form--label">お問い合わせ項目を選択してください</label>
          <div class="c-form--select__item">
            <select>
              <option value="">お仕事について</option>
              <option value="">制作料金について</option>
              <option value="">納期について</option>
              <option value="">その他お仕事について</option>
            </select>
          </div>
          <!--ここのデザイン調整中-->
        </li>
        <li class="p-form__col">
          <div class="c-form">
            <span class="c-form--tab--required">必須</span>
            <label class="c-form--label">お名前
              <span class="c-form--sampletext">最初は非表示でfocusしたらプレースフォルダー文言を表示させたい</span>
            </label>
            <input class="c-form--text" type="text" name="">
            <p class="c-form--attention">エラー</p>
          </div>
        </li>
        <li class="p-form__col">
          <div class="c-form">
            <span class="c-form--tab--required">必須</span>
            <label class="c-form--label">メールアドレス
              <span class="c-form--sampletext">最初は非表示でfocusしたらプレースフォルダー文言を表示させたい</span>
            </label>
            <input class="c-form--text" type="text" name="">
            <p class="c-form--attention">エラー</p>
          </div>
        </li>
        <li class="p-form__col">
          <div class="c-form">
            <span class="c-form--tab--any">任意</span>
            <label class="c-form--label">お問い合わせ内容</label>
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

<?php get_footer(); ?>
