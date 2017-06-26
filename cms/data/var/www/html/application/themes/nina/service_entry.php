<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>
<div class="l-content--lower">

 <span class="p-bg--item--primary--under c-square--primary"></span> <span class="p-bg--item--secondary--under c-square--tertiary"></span>


 <div class="l-article">

   <p class="l-article__ttl c-contentTtl--secondary">サービス</p>

   <h2 class="l-article__cache">コンテンツ力を引き出す、心地よいUIデザインを提供します</h2>

   <ul class="l-article__item c-tab">
     <li><a href="#">UIデザイン</a></li>
   </ul>

   <p class="l-article__img"><img src="<?php echo $view->getThemePath()?>/img/service/03.png" alt=""></p>


   <div class="l-article__inner">

     <p>デザインという言葉の連想で浮かぶキーワードは、絵を描くとか、アートのような自己表現といった意味でイメージする人も多いと思います。実際にWeb制作の現場においての「デザインのつくる」という認識も会社によってまちまちです。</p>

     <p>ニナ・アーキタイプのいうUIデザインとは、<b>お客様やコンテンツ自体がどうおもわれたいか。ユーザーにどう思ってもらいたいかの具体化</b>。それをインターフェイス上で結ぶ手法のことをいいます。</p>

     <h3>ユーザー主義で練られた優れたUIデザイン構築によるメリット</h3>
     <p>優れたUIデザインは<b>お客様のコンテンツの良さを、少ない言葉で説明する力</b>があります。この視覚的・直感的なアプローチこそがコンテンツやお客様のブランド価値となり、ビジネスの成功を促進します。</p>

     <ul>
       <li>使いやすさやアクセス性アップによるユーザー満足の向上</li>
       <li>売り上げに関係のない問い合わせの減少</li>
       <li>クライアントにもノウハウが蓄積</li>
     </ul>

     <h3>見栄えと使いやすさ。クライアントに似合うUIデザインを提供します</h3>
     <p>UIデザインとは、何よりもクライアントのコンテンツとそれを使うユーザーありきです。<b>ユーザーにどう感じてほしいか、どう使って欲しいか。</b>そのために必要なもてなしこそが、中身を作り、クライアントやコンテンツ自体の見栄えをつくるものだと、これまで手がけた案件の経験から確信しています。</p>
     <p>ニナ・アーキタイプは優れたUIデザインをお客様に提供することで、クライアントとユーザーとの関係づくりのサポートに貢献します。</p>
   </div>


   <div class="l-article__item--cta c-cta">

    <p class="c-cta__ttl">お仕事のご依頼はこちらでお受けします</p>

    <div class="c-cta__inner">
      <p class="c-cta__inner__col">レスポンシブWebデザインサイト構築・コーポレートサイトやサービス画面のUIデザインなど、お気軽にお問い合わせください。</p>
      <p class="c-cta__inner__col">2営業日以内にご連絡いたします。</p>
      <p class="c-cta__inner__btn c-btn--secondary--orange"><a href="#">現在コンタクトフォームは停止しています</a></p>
    </div>

  </div>

</div>
</div>


<div class="l-content--secondary">

  <div class="p-related">

    <p class="p-related__cache">あなたにオススメの記事</p>
    <p class="p-related__text--attention">当サイトは発信型メディアとして、近日リニューアルします。</p>


    <ul class="p-related__item">

      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $view->getThemePath()?>/img/article/01.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
      </li>
      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $view->getThemePath()?>/img/article/02.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">最近のお仕事でやっていることを公開します。</p>
      </li>
      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $view->getThemePath()?>/img/article/03.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">いまWebディレクターに求められる「解析提案力」</p>
      </li>


    </ul>
  </div>


</div>
<?php
$this->inc('elements/footer.php');
?>
