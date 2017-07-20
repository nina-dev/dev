<?php
/*
Template Name: 料金について
*/
?>

<?php get_header(); ?>

<div class="l-content--lower">

  <span class="p-bg--item--primary--under c-square--primary"></span> <span class="p-bg--item--secondary--under c-square--tertiary"></span>


  <div class="l-price">

    <p class="l-price__ttl c-contentTtl--secondary">料金について</p>

    <h2 class="l-price__cache">プロジェクトの形態や規模・期間に応じて柔軟にご提案します</h2>
    <p class="l-price__text--primary">プロジェクトの形態や規模、期間に応じて柔軟にご提案させていただきます。</p>

    <ul class="l-price__nav">
      <li><a href="#ui">UIデザイン</a></li>
      <li><a href="#respon">レスポンシブデザイン</a></li>
      <li><a href="#web">ウェブコンサルティング</a></li>
    </ul>
    <p class="l-price__text--secondary">お見積やご相談は無料です。お気軽にどうぞ。</p>

    <div class="l-price__inner">

      <h3 id="ui" class="l-price__inner__ttl">UIデザイン</h3>
      <p class="l-price__inner__text">サービスへの理解を深め、UX設計や事業戦略から運用まで一緒に考えていきます。クライアントがコンテンツを通して実現したいこと・目的に対してユーザーを誘導する手段としてのデザインを提案します。</p>
      <p class="l-price__inner__text">デザインツールはPHOTOSHOPの他、SKETCHアプリの対応も可能です。</p>

      <div class="l-price__inner__table">
        <dl class="l-price__inner__table__col">
          <dt>期間</dt>
          <dd>要相談</dd>
        </dl>
        <dl class="l-price__inner__table__col">
          <dt>費用</dt>
          <dd>1プロジェクト&nbsp;:&nbsp;60万円〜</dd>
        </dl>
      </div>
      <p class="l-price__inner__text--secondary">東京23区近郊の常駐もお受けいたします。</p>
      <div class="l-price__inner__btn">
        <p class="c-btn--secondary">
          <a href="<?php echo home_url() ?>/service/design" title="">UIデザインの詳細はこちら</a>
        </p>
      </div>
    </div>

    <div class="l-price__inner">

      <h3 id="respon" class="l-price__inner__ttl">レスポンシブWebデザインサイト</h3>
      <p class="l-price__inner__text">ご依頼をいただき次第、実現したい目的やご要望のヒアリングを基にデザインとコーディングファイルの納品まで対応します。</p>
      <p class="l-price__inner__text">CSSアニメーションを利用し、パフォーマンスと見栄えに優れた、モバイル環境でも読み込み速度が速いWebサイトを納品します。</p>
      <div class="l-price__inner__table">
        <dl class="l-price__inner__table__col">
          <dt>期間</dt>
          <dd>10営業日〜</dd>
        </dl>
        <dl class="l-price__inner__table__col">
          <dt>費用</dt>
          <dd>10ページ&nbsp;:&nbsp;50万円〜</dd>
        </dl>
      </div>
      <p class="l-price__inner__text--secondary">ご依頼後、サイト診断・コンセプトに沿いサイト公開時に必要なサポートをお任せください。</p>

      <div class="l-price__inner__btn">
        <p class="c-btn--secondary">
          <a href="<?php echo home_url() ?>/service/responsive" title="">レスポンシブWebデザインの詳細はこちら</a>
        </p>

      </div>
    </div>

    <div class="l-price__inner">

      <h3 id="web" class="l-price__inner__ttl">ウェブコンサルティング</h3>
      <p class="l-price__inner__text">アクセス解析や競合分析による自社・他社を含むサイト内外の「現状分析」を診断します。</p>

      <p class="l-price__inner__text">そこから問題点を洗い出し、プロトタイプやカスタマージャーニーマップといったデザイン的な戦略手法を使いマーケティング活動をサポートします。</p>
      <div class="l-price__inner__table">
        <dl class="l-price__inner__table__col">
          <dt>期間</dt>
          <dd>3ヶ月以上〜</dd>
        </dl>
        <dl class="l-price__inner__table__col">
          <dt>費用</dt>
          <dd>1ヶ月&nbsp;:&nbsp;10万円から〜</dd>
        </dl>
      </div>
      <p class="l-price__inner__text--secondary">サイト解析やユーザー動向調査といったサイト運用に必要なノウハウをご提供します</p>
      <div class="l-price__inner__btn">
        <p class="c-btn--secondary">
          <a href="<?php echo home_url() ?>/service/support" title="">ウェブコンサルティングの詳細はこちら</a>
        </p>

      </div>
    </div>

    <div class="l-price__item--cta c-cta">
      <?php get_template_part('/template_parts/cta' ); ?>
    </div>
  </div>
</div>


<?php get_footer(); ?>
