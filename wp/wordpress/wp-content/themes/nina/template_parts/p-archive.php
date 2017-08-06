<div class="p-archive">

  <h2 class="p-archive__cache">
    <?php
    $category = get_the_category();
    $cat_id   = $category[0]->cat_ID;
    $cat_name = $category[0]->cat_name;
    $cat_slug = $category[0]->category_nicename;
    ?><?php echo $cat_name; ?>に関する記事一覧
  </h2>

  <ul class="p-archive__inner">

    <?php
    if ( have_posts() ) :
      while ( have_posts() ) : the_post();
    ?>

    <li class="p-archive__inner__col">

      <div class="c-thumbnail--midium">
      <a href="<?php the_permalink(); ?>">
        <p class="c-thumbnail--midium__item--left">

          <?php if ( has_post_thumbnail() ): // サムネイルを持っているとき ?>
            <?php the_post_thumbnail('large_thumbnail'); ?>
          <?php else: // サムネイルを持っていないとき ?>
            <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/common/noimg01.png">
          <?php endif; ?>
        </p>
        <div class="c-thumbnail--midium__item--right">
          <h2 class="c-thumbnail--midium__item__ttl">
            <?php echo get_the_title(); ?> 
          </h2>
          <p class="c-thumbnail--midium__item__text"><?php echo get_the_excerpt(); ?></p>
        </div>
        </a>
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