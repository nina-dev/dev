<ul class="p-breadcrumb">


<?php if (is_single()||is_category()) : ?>
	<li class="is-first"><a href="<?php echo home_url() ?>">TOP</a></li>
	<li><?php $cat = get_the_category(); echo get_category_parents($cat[0], true, ''); ?></li>
<?php endif; ?>

<?php if ( is_page() ) : ?>
	<li class="is-first"><a href="<?php echo get_option('home'); ?>">TOP</a></li>
	<?php foreach ( array_reverse(get_post_ancestors($post->ID)) as $parid ) { ?>
	<li><a href="<?php echo get_page_link( $parid );?>">
		<?php echo get_page($parid)->post_title; ?></a></li>
		<?php } ?>
		<li><?php the_title(''); ?></li>
	<?php endif; ?>
</ul>
