 <?php if( !(is_home() || is_front_page()) ){ ?>
 <div class="l-content--secondary">
 	<?php get_template_part('/template_parts/related' ); ?>
 </div>
 <?php } ?>

<footer class="l-footer">
	<p class="l-footer__item--left">COPYRIGHT nina&nbsp;archetype.com</p>

	<div class="l-footer__item--right c-pagetop">
		<span class="c-pagetop__item"></span>
	</div>

</footer>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo get_stylesheet_directory_uri(); ?>/js/script.js"></script>
<script type="text/javascript" src="<?php echo get_stylesheet_directory_uri(); ?>/js/particles.min.js"></script>
<script type="text/javascript" src="<?php echo get_stylesheet_directory_uri(); ?>/js/app.js"></script>

<?php if( is_home() || is_front_page() ){ ?>

<script type="text/javascript">

	jQuery(window).load(function() {
		$(".l-loading").addClass('is-anime');
		$(".l-container").hide();

		setTimeout(function(){
			$(".l-container").addClass('is-open');
			$(".l-loading").hide();

		},2400);
	});
</script>

<?php } ?>

<?php wp_footer(); ?>

</body>
</html>