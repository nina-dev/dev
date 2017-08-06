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


			<?php
			if ( have_posts() ) :
				while ( have_posts() ) : the_post();
			?>


			<ul class="p-form__status">
				<li class="p-form__status__item <?php if ( is_page('input') ) { echo 'is_active'; } ?>">入力画面</li>
				<li class="p-form__status__item <?php if ( is_page('confirm') ) { echo 'is_active'; } ?>">確認画面</li>
				<li class="p-form__status__item <?php if ( is_page('thanks') ) { echo 'is_active'; } ?>">完了画面</li>
			</ul>

			<?php
			//出力される改行タグを削除
			remove_filter( 'the_content', 'wpautop' );
			the_content();
			?>

			<?php
			endwhile;
			else :
				?>

			<p>投稿が見つかりません。</p>

			<?php
			endif;
			?>


		</div>

		<div class="l-content--lower__item--right">
			<?php get_sidebar('type1'); ?>
		</div>

	</div>
</div>

<?php get_footer(); ?>

