<div class="l-sidebar">
    <div class="l-sidebar__col">
        <?php get_template_part('/template_parts/p-introduce' ); ?>
    </div>

    <div class="l-sidebar__col">
        <p class="l-sidebar__col__ttl">人気コンテンツ</p>
            <ul class="l-sidebar__col__item">
                <?php if (!is_single('ui')) : ?>
                    <li class="l-sidebar__col__item__list c-thumbnail--large">
                        <a href="/service/ui">
                            <p class="c-thumbnail--large__item--img">
                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/article/ui.jpg">
                            </p>
                            <p class="c-thumbnail--large__item--ttl--small">コンテンツ力を引き出す、心地よいUIデザインを提供します</p>
                        </a>
                    </li>
                <?php endif; ?>
                <?php if ( !is_single('responsive')) : ?>
                    <li class="l-sidebar__col__item__list c-thumbnail--large">
                        <a href="/service/responsive">
                            <p class="c-thumbnail--large__item--img">
                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/article/responsive.jpg">
                            </p>
                            <p class="c-thumbnail--large__item--ttl--small">デザインとパフォーマンスを両立したレスポンシブWebデザイン</p>
                        </a>
                    </li>
                <?php endif; ?>
                <?php if ( !is_single('support')) : ?>
                    <li class="l-sidebar__col__item__list c-thumbnail--large">
                        <a href="/service/support">
                            <p class="c-thumbnail--large__item--img">
                                <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/article/support.jpg">
                            </p>
                            <p class="c-thumbnail--large__item--ttl--small">マーケティング効果を最大限引き出すウェブコンサルティング</p>
                        </a>
                    </li>
                <?php endif; ?>
        </ul>
    </div>

    <div class="l-sidebar__col">
        <p class="l-sidebar__col__ttl">カテゴリー一覧</p>
        <ul class="l-sidebar__col__item--list c-list--category">
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
        <ul class="l-sidebar__col__item--list c-list--tag">
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
                                            <?php the_post_thumbnail('small_thumbnail'); ?>
                                        <?php else: // サムネイルを持っていないとき ?>
                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/common/noimg02.png">
                                        <?php endif; ?>

                                    </div>
                                </a>
                            </div>
                            <div class="c-thumbnail--small__item--detail">
                                <p class="c-thumbnail--small__item__ttl">
                                    <a href="<?php the_permalink(); ?>">
                                        <?php
                                        // 文字数制限
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
                    <p>準備中になります</p>
                    <?php
                    endif;
                    wp_reset_postdata();
                    ?>
                </ul>
            </div>
        </div>