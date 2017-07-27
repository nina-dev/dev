<div class="p-related">
  <p class="p-related__cache">あなたにオススメの記事</p>
  <ul class="p-related__item">

    <?php
    //タグ情報から関連記事をランダムに呼び出す
    $tags = wp_get_post_tags($post->ID);
    $tag_ids = array();
    foreach($tags as $tag):
      array_push( $tag_ids, $tag -> term_id);
  endforeach ;
  $args = array(
      'post__not_in' => array($post -> ID),
      'posts_per_page'=> 4,
      'tag__in' => $tag_ids,
      'orderby' => 'date',
      'order' => 'DESC',
      );
      $query = new WP_Query($args); ?>
      <?php if( $query -> have_posts() && !empty($tag_ids) ): ?>
        <?php while ($query -> have_posts()) : $query -> the_post(); ?>


            <li class="p-related__item__box c-thumbnail--large">
              <a href="<?php the_permalink(); ?>">
                <p class="c-thumbnail--large__item--img">
                  <?php if ( has_post_thumbnail() ): // サムネイルを持っているとき ?>
                    <?php the_post_thumbnail(); ?>
                <?php else: // サムネイルを持っていないとき ?>
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/common/noimg01.png">
                <?php endif; ?>
            </p>
            <p class="c-thumbnail--large__item--ttl">
                <?php
                 // 文字数制限
                if(mb_strlen($post->post_title, 'UTF-8')>28){
                    $title= mb_substr($post->post_title, 0, 28, 'UTF-8');
                    echo $title.'・・・';
                }else{
                    echo $post->post_title;
                }?>
            </p>
        </a>
    </li>
<?php endwhile;?>

<?php else:?>
    <p>準備中になります</p>
    <?php
    endif;
    wp_reset_postdata();
    ?>

</ul>
</div>
