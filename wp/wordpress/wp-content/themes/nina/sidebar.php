<div class="l-sidebar">
    <div class="l-sidebar__col">
        <div class="c-introduce">
            <p class="c-introduce__text">テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト</p>
        </div>
    </div>
    <div class="l-sidebar__col">
        <p class="l-sidebar__col__ttl">カテゴリー一覧</p>
        <ul class="l-sidebar__col__item c-list--category">
           <?php
            // カテゴリー一覧を出力
           $args = array(
            'order' => 'desc',
            );
           $terms = get_terms( 'category', $args);
           foreach($terms as $value) {
            echo '<li><a href="'.get_category_link($value->term_id).'">'.$value->name.'</a></li>';
        }
        ?>
    </ul>
</div>
<div class="l-sidebar__col">
    <p class="l-sidebar__col__ttl">タグ一覧</p>
    <ul class="l-sidebar__col__item c-list--tag">
        <?php
            // タグ一覧を出力
        $args = array(
            'order' => 'desc',
            );
        $tags = get_terms('post_tag', $args);
        foreach($tags as $value) {
            echo '<li><a href="'. get_tag_link($value->term_id) .'">'. $value->name .'</a></li>';
        }
        ?>
    </ul>
</div>
<div class="l-sidebar__col">
    <p class="l-sidebar__col__ttl">コンテンツ</p>
    <ul class="l-sidebar__col__item">
        <li class="l-sidebar__col__item__list c-thumbnail--large">
            <a href="#">
                <p class="c-thumbnail--large__item--img">
                    <img src="http://nina.dev/wp-content/themes/nina/img/article/01.jpg">
                </p>
                <p class="c-thumbnail--large__item--ttl--related">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
            </a>
        </li>
        <li class="l-sidebar__col__item__list c-thumbnail--large">
            <a href="#">
                <p class="c-thumbnail--large__item--img">
                    <img src="http://nina.dev/wp-content/themes/nina/img/article/01.jpg">
                </p>
                <p class="c-thumbnail--large__item--ttl--related">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
            </a>
        </li>
        <li class="l-sidebar__col__item__list c-thumbnail--large">
            <a href="#">
                <p class="c-thumbnail--large__item--img">
                    <img src="http://nina.dev/wp-content/themes/nina/img/article/01.jpg">
                </p>
                <p class="c-thumbnail--large__item--ttl--related">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
            </a>
        </li>
    </ul>
</div>
<div class="l-sidebar__col">
    <p class="l-sidebar__col__ttl">関連記事</p>
    <ul class="l-sidebar__col__item">
        <?php
            //タグ情報から関連記事をランダムに呼び出す
        $tags = wp_get_post_tags($post->ID);
        $tag_ids = array();
        foreach($tags as $tag):
          array_push( $tag_ids, $tag -> term_id);
      endforeach ;
      $args = array(
          'post__not_in' => array($post -> ID),
          'posts_per_page'=> 5,
          'tag__in' => $tag_ids,
          'orderby' => 'date',
          'order' => 'DESC',
          );
          $query = new WP_Query($args); ?>
          <?php if( $query -> have_posts() && !empty($tag_ids) ): ?>
            <?php while ($query -> have_posts()) : $query -> the_post(); ?>

              <li class="l-sidebar__col__item__list c-thumbnail--small">
                <div class="c-thumbnail--small__item--img">
                  <a href="<?php the_permalink(); ?>">
                    <div class="photo">

                      <?php if ( has_post_thumbnail() ): // サムネイルを持っているとき ?>
                        <?php the_post_thumbnail(); ?>
                    <?php else: // サムネイルを持っていないとき ?>
                        <img src="http://nina.dev/wp-content/themes/nina/img/article/01.jpg">
                    <?php endif; ?>

                </div>
            </a>
        </div>
        <div class="c-thumbnail--small__item--detail">
          <p class="c-thumbnail--small__item__ttl">
            <a href="<?php the_permalink(); ?>">
                      <?php // 文字数制限
                      if(mb_strlen($post->post_title, 'UTF-8')>28){
                        $title= mb_substr($post->post_title, 0, 28, 'UTF-8');
                        echo $title.'・・・';
                    }else{
                        echo $post->post_title;
                    }?>
                </a>
            </p>
        </div>
    </li>
<?php endwhile;?>

<?php else:?>
    <p>記事はありませんでした</p>
    <?php
    endif;
    wp_reset_postdata();
    ?>
</ul>
</div>
<div class="l-sidebar__col">
    <p class="l-sidebar__col__ttl">最新記事</p>
    <ul class="l-sidebar__col__item">


        <?php query_posts('posts_per_page=4'); ?>

        <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
            <li class="l-sidebar__col__item__list c-thumbnail--small">
                <div class="c-thumbnail--small__item--img">
                    <a href="<?php the_permalink(); ?>">
                        <div class="photo">
                          <?php if ( has_post_thumbnail() ): // サムネイルを持っているとき ?>
                            <?php the_post_thumbnail(); ?>
                        <?php else: // サムネイルを持っていないとき ?>
                            <img src="http://nina.dev/wp-content/themes/nina/img/article/01.jpg">
                        <?php endif; ?>

                    </div>
                </a>
            </div>
            <div class="c-thumbnail--small__item--detail">
                <p class="c-thumbnail--small__item__ttl">
                    <a href="<?php the_permalink(); ?>">
                        <?php // 文字数制限
                        if(mb_strlen($post->post_title, 'UTF-8')>28){
                          $title= mb_substr($post->post_title, 0, 28, 'UTF-8');
                          echo $title.'・・・';
                      }else{
                          echo $post->post_title;
                      }?>

                  </a>
              </p>
              <div class="c-thumbnail--small__item__list">
                <p class="c-thumbnail--small__item__list__text"><?php the_time('Y/m/d'); ?></p>
            </div>
        </div>
    </li>
<?php endwhile; endif; ?>
<?php wp_reset_query(); ?>

</ul>
    </div>
</div>