<div class="l-sidebar">
    <div class="l-sidebar__col">
        <div class="c-introduce">
            <p class="c-introduce__text">テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト</p>
        </div>
    </div>

    <div class="l-sidebar__col">
        <p class="l-sidebar__col__ttl">コンテンツ</p>
        <ul class="l-sidebar__col__item">
            <li class="l-sidebar__col__item__list c-thumbnail--large">
            <a href="/about">
                    <p class="c-thumbnail--large__item--img">
                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/article/01.jpg">
                    </p>
                    <p class="c-thumbnail--large__item--ttl">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
                </a>
            </li>
            <li class="l-sidebar__col__item__list c-thumbnail--large">
                <a href="/flow">
                    <p class="c-thumbnail--large__item--img">
                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/article/01.jpg">
                    </p>
                    <p class="c-thumbnail--large__item--ttl">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
                </a>
            </li>
            <li class="l-sidebar__col__item__list c-thumbnail--large">
                <a href="/price">
                    <p class="c-thumbnail--large__item--img">
                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/article/01.jpg">
                    </p>
                    <p class="c-thumbnail--large__item--ttl">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
                </a>
            </li>
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