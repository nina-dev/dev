<ul class="p-archive">

  <?php
  if ( have_posts() ) :
    while ( have_posts() ) : the_post();
  ?>

  <li class="p-archive__col">
    <div class="c-thumbnail--midium">
      <p class="c-thumbnail--midium__item--left">

        <?php if ( has_post_thumbnail() ): // サムネイルを持っているとき ?>
          <?php the_post_thumbnail('large_thumbnail'); ?>
        <?php else: // サムネイルを持っていないとき ?>
          <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/common/noimg01.png">
        <?php endif; ?>
      </p>
      <div class="c-thumbnail--midium__item--right">
        <h2 class="c-thumbnail--midium__item__ttl">
          <?php
                // 文字数制限
          if(mb_strlen($post->post_title, 'UTF-8')>28){
            $title= mb_substr($post->post_title, 0, 28, 'UTF-8');
            echo $title.'・・・';
          }else{
            echo $post->post_title;
          }?>
        </h2>
        <p class="c-thumbnail--midium__item__text"><?php echo get_the_excerpt(); ?></p>
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