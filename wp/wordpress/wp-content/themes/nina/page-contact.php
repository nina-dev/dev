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

			<style>
				.c-status {
					width:100%;
					background:#F2F2F2;
					display: table;
					text-align: center;
				}
				.c-status__col {
					width:33.3333%;
					display: table-cell;
					padding: 16px 0;
				}

				.c-status__col.is_active {
					background: #666;
				}
			</style>

			<ul class="c-status">
				<li class="c-status__col">入力画面</li>
				<li class="c-status__col is_active">確認画面</li>
				<li class="c-status__col">完了画面</li>
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

