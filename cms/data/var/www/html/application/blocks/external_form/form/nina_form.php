<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
// ヘルパー読み込み
$form = Core::make('helper/form');

if (isset($response)) {
  // コントローラー処理完了後の処理（サンクスメッセージなど）
?>
  <div class="thanks">
    <h3>お問い合わせが完了いたしました</h3>
    <p>お問い合わせありがとうございます。<br>内容を確認して、2営業日以内にご返答のご連絡をお返しします。</p>
  </div>
<?php
} else {
  // フォーム表示（初回入力・再入力共通）
  if(isset($error)) {
    // エラー表示
?>
    <div class="has-error">
      <p class="help-block">入力内容に誤りがあります。</p>
<?php
      foreach($error as $errmsg) {
        echo '<p style="color:red;">'.$errmsg.'</p>';
      }
?>
    </div>
<?php
}
    // フォーム表示
?>
    <form class="p-form" method="post" action="<?php echo $view->action('send_mail')?>">
<?php

      // セレクトボックス
      $categoryList = array(
        'お仕事について' => 'お仕事について',
        '制作料金について' => '制作料金について',
        '納期について' => '納期について',
        'その他お仕事について' => 'その他お仕事について'
      );
      echo '<div class="p-form__col c-form--select">';
      echo '<span class="c-form--tab--any">任意</span>';
      echo '<label class="c-form--label">お問い合わせ項目を選択してください</label>';
      echo '<div class="c-form--select__item">';
      echo $form->select('category', $categoryList, '');
      // echo $form->label('category',$form->select('category', $categoryList, ''), array('class' => 'c-form--select'));
      // echo $form->select('category', $categoryList, '');
      echo '</div></div>';

      // テキスト
      echo '<div class="p-form__col"><div class="c-form">';
      echo '<span class="c-form--tab--required">必須</span>';
      echo $form->label('name', 'お名前<span class="c-form--sampletext">最初は非表示でfocusしたらプレースフォルダー文言を表示させたい</span>', array('class' => 'c-form--label'));
      echo $form->text('name',array('class' => 'c-form--text'));
      echo '<p class="c-form--attention">エラー</p>';
      echo '</div></div>';

      // メールアドレス
      echo '<div class="p-form__col"><div class="c-form">';
      echo '<span class="c-form--tab--required">必須</span>';
      echo $form->label('email', 'メールアドレス<span class="c-form--sampletext">', array('class' => 'c-form--label'));
      echo $form->email('email',array('class' => 'c-form--text'));
      echo '<p class="c-form--attention">エラー</p>';
      echo '</div></div>';

      // テキストエリア
      echo '<div class="p-form__col"><div class="c-form">';
      echo '<span class="c-form--tab--any">任意</span>';
      echo $form->label('text', 'お問い合わせ内容', array('class' => 'c-form--label'));
      echo $form->textarea('text', '', array('placeholder' => 'お問い合わせ内容を入力してください'));
      echo '</div></div>';

      // 送信ボタン
      echo '<div class="p-form__col--btn c-cta__inner__btn c-btn--secondary--orange">';
      // echo $form->submit('submit', '送信する');
      echo '<button type="submit">送信する</button>';
      echo '</div>';
?>
   </form>
<?php
}