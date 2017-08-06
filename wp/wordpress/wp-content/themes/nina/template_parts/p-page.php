<div class="p-page">
    

    <?php
      if (have_posts()) :
        while (have_posts()) : the_post();
    ?>
    
    <h2 class="p-page__cache"><?php the_title(); ?></h2>
    
    <p class="p-page__img"><?php the_post_thumbnail('post_thumbnail'); ?></p>
    
    <div class="p-page__inner">

    <?php the_content(); ?>


    </div>

    <?php get_template_part('/template_parts/p-cta'); ?>

    <?php
      endwhile;
      else :
    ?>
    
    <p>投稿が見つかりません。</p>

    <?php
      endif;
    ?>


</div>