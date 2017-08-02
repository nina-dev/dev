
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

			<?php the_content(); ?>

			<?php
			endwhile;
			else :
				?>

			<p>投稿が見つかりません。</p>

			<?php
			endif;
			?>
