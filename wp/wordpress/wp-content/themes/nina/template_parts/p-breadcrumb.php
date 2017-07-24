<ul class="p-breadcrumb">
<?php if (is_single()) : ?>
	<li class="is-first"><a href="<?php echo home_url() ?>">TOP</a></li>
	<li><?php $cat = get_the_category(); echo get_category_parents($cat[0], true, ''); ?></li>
<?php endif; ?>

<?php if ( is_page() ) : ?>
	<?php foreach ( array_reverse(get_post_ancestors($post->ID)) as $parid ) { ?>
	<li class="is-first"><a href="<?php echo home_url() ?>">TOP</a></li>
	<li><?php $cat = get_the_category(); echo get_category_parents($cat[0], true, ''); ?></li>
	<?php } ?>
<?php endif; ?>
</ul>
