<?php get_header(); ?>

<div class="l-content--lower">


  <div class="l-service">

    <p class="l-service__ttl c-contentTtl--secondary">サービス</p>

    <h2 class="l-service__cache">伝わるUIデザインでオーダーメイドな解決策をつくります</h2>

    <div class="l-service__inner">
      <ul class="l-service__inner__item">

        <?php
        if ( have_posts() ) :
          while ( have_posts() ) : the_post();
        ?>
        <li class="l-service__inner__item__col">
          <div class="c-thumbnail--table">
            <p class="c-thumbnail--table__item--img">
              <?php the_post_thumbnail('post_thumbnail'); ?>
            </p>
            <div class="c-thumbnail--table__item--detail--right">
              <h2 class="c-thumbnail--table__item__ttl">
                <?php
                // タグ情報を取得
                $posttags = get_the_tags();
                if($posttags){ ?>
                <?php the_tags('',' ');?>
                <?php } ?>
              </h2>
              <p class="c-thumbnail--table__item__text"><?php echo get_the_excerpt(); ?></p>
              <div class="c-thumbnail--table__item__btn">
                <p class="c-btn--tertiary"><a href="<?php the_permalink(); ?>" title="">VIEW MORE</a></p>
              </div>
            </div>
          </div>
        </li>

        <?php
        endwhile;
        else :
          ?>

        <p>投稿が見つかりません。</p>

        <?php
        endif;
        ?>
      </ul>
    </div>

  </div>
</div>

<?php get_footer(); ?>


