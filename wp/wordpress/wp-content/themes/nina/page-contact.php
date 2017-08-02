<?php
/*
Template Name: お問い合わせテンプレート
*/
?>

<?php get_header(); ?>

<div class="l-content--lower">

	<div class="l-content--lower__inner">

		<div class="l-content--lower__item--left">

			<?php get_template_part('/template_parts/p-breadcrumb' ); ?>

			<?php get_template_part('/template_parts/p-form' ); ?>

		</div>

		<div class="l-content--lower__item--right">
			<?php get_sidebar('type1'); ?>
		</div>

	</div>
</div>

<?php get_footer(); ?>

