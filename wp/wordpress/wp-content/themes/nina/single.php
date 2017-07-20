<?php get_header(); ?>

<div class="l-content--lower">

<div class="l-content--lower__inner">

<div class="l-content--lower__item--left l-article">

    <?php
      if ( have_posts() ) :
        while ( have_posts() ) : the_post();
    ?>

    <p class="l-article__ttl c-contentTtl--secondary">
      <?php
      $category = get_the_category();
      echo $category[0]->cat_name;
      ?>
    </p>

    <h2 class="l-article__cache"><?php the_title(); ?></h2>

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

    <p class="l-article__img">
    <?php the_post_thumbnail('post_thumbnail'); ?>
    </p>

    <div class="l-article__inner">
      <?php the_content(); ?>
    </div>


    <div class="l-article__item c-serviceArea">

      <?php
      // タグのslugを取得
      $tag_slug = $posttags[0]->slug;
      ?>

      <?php if($tag_slug == 'support'){ //タグのslugがsupportなら表示 ?>
      <h4 class="c-serviceArea__ttl">ウェブコンサルティングサービス内容</h4>
      <ul class="c-serviceArea__list">
        <li>Webサイトヒアリング・ブランディング検証</li>
        <li>現行サイトデザインの改善提案</li>
        <li>ユーザー調査・ペルゾナ設定</li>
        <li>SEO（検索エンジン最適化）</li>
        <li>サイト運用・制作改善提案</li>
        <li>SNS運用支援</li>
      </ul>
      <?php }elseif($tag_slug == 'ui'){ //タグのslugがuiなら表示 ?>
      <h4 class="c-serviceArea__ttl">UIデザインのサービス内容</h4>
      <ul class="c-serviceArea__list">
        <li>Webサイトヒアリング・ブランディング検証</li>
        <li>現行サイトデザインの改善提案</li>
        <li>情報設計・UX設計</li>
        <li>PHOTOSHOP・sketchでのデザインカンプ制作</li>
        <li>css3でのコーディング実装</li>
      </ul>
      <?php }elseif($tag_slug == 'responsive'){ //タグのslugがresponsiveなら表示 ?>
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
      <?php }?>
      <p class="c-serviceArea__link"><a href="<?php echo home_url() ?>/price">このサービスの料金はこちら</a></p>
    </div>

    <div class="l-article__item--cta c-cta">
      <?php get_template_part('/template_parts/cta' ); ?>
    </div>

    <?php
    endwhile;
    else :
      ?>

    <p>投稿が見つかりません。</p>

    <?php
    endif;
    ?>

</div>

<div class="l-content--lower__item--right l-side">
テキストテキストテキストテキストテキストテキスト
</div>



</div>
</div>

<?php get_footer(); ?>

