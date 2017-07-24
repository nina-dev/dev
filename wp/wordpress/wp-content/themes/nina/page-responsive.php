<?php
/*
Template Name: レスポンシブWebデザイン
*/
?>

<?php get_header(); ?>

<div class="l-content--lower">

  <span class="p-bg--item--primary--under c-square--primary"></span> <span class="p-bg--item--secondary--under c-square--tertiary"></span>

  <div class="l-article">

    <p class="l-article__ttl c-contentTtl--secondary">サービス</p>

    <h2 class="l-article__cache">マルチスクリーン対応は、ユーザーとの関係づくりに必須です</h2>

    <ul class="l-article__item--tag c-tab">
      <li>
        <?php
        // タグ情報を取得
        $posttags = get_the_tags();
        if($posttags){ ?>
        <?php the_tags('',' ');?>
        <?php } ?>
      </li>
    </ul>

    <p class="l-article__img"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/service/02.png" alt=""></p>

    <div class="l-article__inner">

      <p>レスポンシブWebデザインとは、ユーザーの使用するPC、タブレット、スマートフォンといった複数の異なる画面サイズを。ユーザーが閲覧する画面サイズに応じて（つまり「レスポンシブ」に）表示を変えることを指します。</p>

      <p>モバイルフレンドリーが叫ばれて久しい昨今では多くの企業サイトやメディアサイトでも、このレスポンシブWebデザインを採用しています。</p>

      <p><b>どのデバイスでも同一のファイルを利用でき、管理も非常に簡単</b>になるため、ニナ・アーキタイプではお客様からの特別な要求・複雑なレイアウト及びデザインでない場合は、レスポンシブWebデザインをご提案・ご提供しています。</p>

      <div class="c-index">
        <p class="c-index__ttl">こんなレスポンシブデザインを提供します</p>
        <ul class="c-index__list">
          <li>更新やカスタムがしずらいフレームワークを使用せず、<b>最適なパフォーマンスと良い見栄え</b>を両立させたデザイン</li>
          <li>CSS3アニメーションを使用し、<b>適度なインタラクション（動き）やアニメーション</b>でクライアントへの印象効果をあげるデザイン</li>
          <li>ユーザーのサイト閲覧環境や端末に合わせ、適切なコンテンツ訴求を促すデザイン</li>
        </ul>
      </div>

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

    <div class="l-article__item c-serviceArea">
      <h4 class="c-serviceArea__ttl">レスポンシブWebデザインのサービス内容</h4>
      <ul class="c-serviceArea__list">
        <li>Webサイトヒアリング・ブランディング検証</li>
        <li>現行サイトデザインの改善提案</li>
        <li>情報設計・UX設計</li>
        <li>HTML5のマークアップ</li>
        <li>PHOTOSHOP・sketchでのデザインカンプ制作</li>
        <li>css3でのコーディング実装</li>
        <li>サイト読み込みパフォーマンス対応</li>
      </ul>
      <p class="c-serviceArea__link"><a href="<?php echo home_url() ?>/price">このサービスの料金はこちら</a></p>
    </div>

    <div class="l-article__item--cta c-cta">
      <?php get_template_part('/template_parts/p-cta' ); ?>
    </div>

  </div>
</div>

<?php get_footer(); ?>
