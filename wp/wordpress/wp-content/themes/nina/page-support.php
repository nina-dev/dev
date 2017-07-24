<?php
/*
Template Name: ウェブコンサルティング
*/
?>

<?php get_header(); ?>

<div class="l-content--lower">

  <span class="p-bg--item--primary--under c-square--primary"></span> <span class="p-bg--item--secondary--under c-square--tertiary"></span>

  <div class="l-article">

    <p class="l-article__ttl c-contentTtl--secondary">サービス</p>

    <h2 class="l-article__cache">ユーザに届いて伝わる。そんなサイトに育てませんか？</h2>

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

    <p class="l-article__img"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/service/01.png" alt=""></p>

    <div class="l-article__inner">

      <p>せっかくリニューアルしたWebサイトや更新されたWebページ、そのままにしていませんか？どんなに綺麗で洗練されたサイトでも、勝手に見込みあるユーザーはきてくれません。<b>Webサイトはリニューアルしたからといって、テレビCMのように勝手に告知されるものではない</b>のです。</p>
      <p>ニナ・アーキタイプでは、クライアントにとっての理想的なユーザー獲得のための、ウェブプロモーション・Web活用の改善プロセスのコンサルティングサービスを提供しています。</p>

      <div class="c-index">
        <p class="c-index__ttl">目的を達成するためのPDCAアイディアを提供します</p>
        <ul class="c-index__list">
          <li>何のためのWebサイト？を明確にし、目的達成に必要なサイト内の導線づくりをサポートします。</li>
          <li>ユーザーの特性に注目し、Webだからこそできるターゲットに合わせたPDCAアイディアを提供します。</li>
          <li>SEO対策やアナリティクスといったユーザー動向の可視化にも勿論、対応します。</li>
        </ul>
      </div>

      <h3>ターゲットがどこにいるか。にも注視します</h3>
      <p>Webサイト改修等のヒアリングの中で、よく耳にするキーワードは「ターゲットについて」。コンテンツをよくしたい想いからターゲットの観察に力を入れるのは勿論間違いではありません。しかし、それだけはWebサイトを通した成果への期待は見込めないのも事実です。</p>

      <p><b>理想的なユーザーがどこに。そしてどういうモチベーションでいるか。</b>その仮説立てのプロセスこそが、質の高い戦略や効果のあるPDCAサイクルをつくる歯車になりえます。</p>

      <h3>クライアントのマーケティング効果を最大限引き出します</h3>
      <p>ニナ・アーキタイプの顧客の半分が、マーケターと言われるクライアントです。<b>数字以上の価値をつくる印象効果に対する提案依頼</b>や<b>サイト内の部分的な改修</b>などもお受けいたします。<br>ぜひ、おまかせください。</p>
    </div>

    <div class="l-article__item c-serviceArea">
      <h4 class="c-serviceArea__ttl">ウェブコンサルティングサービス内容</h4>
      <ul class="c-serviceArea__list">
        <li>Webサイトヒアリング・ブランディング検証</li>
        <li>現行サイトデザインの改善提案</li>
        <li>ユーザー調査・ペルゾナ設定</li>
        <li>SEO（検索エンジン最適化）</li>
        <li>サイト運用・制作改善提案</li>
        <li>SNS運用支援</li>
      </ul>

      <p class="c-serviceArea__link"><a href="<?php echo home_url() ?>/price">このサービスの料金はこちら</a></p>
    </div>

    <div class="l-article__item--cta c-cta">
      <?php get_template_part('/template_parts/p-cta' ); ?>
    </div>

  </div>
</div>

<?php get_footer(); ?>
