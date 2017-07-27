<?php get_header(); ?>

<div class="l-content--lower">

<div class="l-content--lower__inner">

<div class="l-content--lower__item--left">

<?php get_template_part('/template_parts/p-breadcrumb' ); ?>

<?php get_template_part('/template_parts/p-article' ); ?>

</div>

<div class="l-content--lower__item--right">
<?php if ( is_single('ui') || is_single('responsive') ||is_single('support') ) : ?>
<?php get_sidebar('type2'); ?>
<?php else: ?>
<?php get_sidebar('type4'); ?>
<?php endif; ?>

</div>

</div>
</div>

<?php get_footer(); ?>

