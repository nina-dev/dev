
			<?php
			if ( have_posts() ) :
				while ( have_posts() ) : the_post();
			?>

			<?php the_content(); ?>

			<?php
			endwhile;
			else :
				?>

			<p>投稿が見つかりません。</p>

			<?php
			endif;
			?>
