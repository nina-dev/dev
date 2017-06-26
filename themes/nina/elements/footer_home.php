<?php
defined('C5_EXECUTE') or die(_("Access Denied."));?>

<footer class="l-footer">
  <p class="l-footer__item--left">COPYRIGHT nina&nbsp;archetype.com</p>

  <div class="l-footer__item--right c-pagetop">
    <span class="c-pagetop__item"></span>
  </div>

</footer>
</div>

  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
  <script type="text/javascript" src="<?php echo $this->getThemePath()?>/js/script.js"></script>
  <script type="text/javascript" src="<?php echo $this->getThemePath()?>/js/particles.min.js"></script>
  <script type="text/javascript" src="<?php echo $this->getThemePath()?>/js/app.js"></script>

<script type="text/javascript">

    // jQuery(window).load(function() {
    //  $(".l-loading").addClass('is-anime');
    //  $(".l-container").hide();

    //  setTimeout(function(){
    //      $(".l-container").addClass('is-open');
    //      $(".l-loading").hide();

    //  },2400);
    // });
  </script>


<?php  Loader::element('footer_required'); ?>

</body>
</html>