<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

<div class="l-content--lower">

  <span class="p-bg--item--primary--under c-square--primary"></span> <span class="p-bg--item--secondary--under c-square--tertiary"></span>


  <div class="l-article">

    <p class="l-article__ttl c-contentTtl--secondary">サービス</p>

    <h2 class="l-article__cache">マルチスクリーン対応は、ユーザーとの関係づくりに必須です</h2>

    <ul class="l-article__item c-tab">
      <li><a href="#">レスポンシブWebデザイン</a></li>
    </ul>

    <p class="l-article__img"><img src="<?php echo $this->getThemePath(); ?>/img/service/02.png" alt=""></p>


    <div class="l-article__inner">

      <p>レスポンシブWebデザインとは、ユーザーの使用するPC、タブレット、スマートフォンといった複数の異なる画面サイズを。ユーザーが閲覧する画面サイズに応じて（つまり「レスポンシブ」に）表示を変えることを指します。</p>
      <p>モバイルフレンドリーが叫ばれて久しい昨今では多くの企業サイトやメディアサイトでも、このレスポンシブWebデザインを採用しています。</p>

      <p><b>どのデバイスでも同一のファイルを利用でき、管理も非常に簡単</b>になるため、ニナ・アーキタイプではお客様からの特別な要求・複雑なレイアウト及びデザインでない場合は、レスポンシブWebデザインをご提案・ご提供しています。</p>

      <h3>レスポンシブWebデザインをすすめる理由</h3>

      <ul>
        <li>素早い納品・修正・リリースが可能。単一のHTMLソースなのでコンテンツメンテナンスが簡単。</li>
        <li>SEOに有効的。PC用のページとモバイル用のページを単一の（同一の） URLとすることができるため、Google のアルゴリズムにとってはコンテンツを適切にインデックスできるようになります。</li>

        <li><b>コンテンツがシェアされやすい。</b>PC 用のページとモバイル用のページを単一の（同一の） URL とすることができるため、ユーザーにとってはシェアやリンクが容易になる。</li>
      </ul>

      <p><b>レスポンシブデザインは発信するコンテンツがSNSなどでシェアされやすい。</b>これは、Web上のコミュニケーションをつくるにあたり、大事なメリットになります。</p>

      <p>メンテナンス性に優れたレスポンシブWebデザインは、プロモーションやマーケティング的な観点においても、<b>多くのユーザーに、すばやく届けること</b>ができるため、競合他社よりユーザーとのリーチをつくることができ、多くの付加価値を生み出すことも可能です。</p>

      <h3>洗練されたスキルで良質なレスポンシブWebデザインを提供します</h3>
      <p>レスポンシブWebデザインは制作のスキルがそれなりに問われる技術です。そのスキルとは<b>お客様がユーザーに訴求したいポイントの整理能力</b>です。これが引き出せない場合は、ただパフォーマンスの悪い、ユーザーにとって使いにくいサイトが出来上がってしまいます。</p>

      <p>ニナ・アーキタイプはお客様との密なコミュニケーションを大事に、デザインとパフォーマンスを両立したレスポンシブWebデザインで、ユーザーにとっての「見やすい」「使いやすい」をサイト上で展開し、コンテンツ訴求をサポートします。</p>

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
