<?php get_header(); ?>

<div class="l-content--lower">

<div class="l-content--lower__inner">

<div class="l-content--lower__item--left">

 <ul class="l-service__inner__item">
        <?php
        if ( have_posts() ) :
          while ( have_posts() ) : the_post();
        ?>
        <li class="l-service__inner__item__col">
          <div class="c-thumbnail--table">
            <p class="c-thumbnail--table__item--img">

                  <?php if ( has_post_thumbnail() ): // サムネイルを持っているとき ?>
                    <?php the_post_thumbnail('large_thumbnail'); ?>
                <?php else: // サムネイルを持っていないとき ?>
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/common/noimg01.png">
                <?php endif; ?>
            </p>
            <div class="c-thumbnail--table__item--detail--right">
              <h2 class="c-thumbnail--table__item__ttl">
                <?php
                // 文字数制限
                if(mb_strlen($post->post_title, 'UTF-8')>28){
                  $title= mb_substr($post->post_title, 0, 28, 'UTF-8');
                  echo $title.'・・・';
                }else{
                  echo $post->post_title;
                }?>
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

<div class="l-content--lower__item--right">
<?php get_sidebar('type1'); ?>
</div>

</div>
</div>

<?php get_footer(); ?>


