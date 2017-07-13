<?php
defined('C5_EXECUTE') or die(_("Access Denied."));?>

<footer class="l-footer">
  <p class="l-footer__item--left">COPYRIGHT nina&nbsp;archetype.com</p>

  <div class="l-footer__item--right c-pagetop">
    <span class="c-pagetop__item"></span>
  </div>
</footer>
</div>


<script type="text/javascript" src="<?php echo $this->getThemePath()?>/js/script.js"></script>
<script type="text/javascript" src="<?php echo $this->getThemePath()?>/js/particles.min.js"></script>
<script type="text/javascript" src="<?php echo $this->getThemePath()?>/js/app.js"></script>

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


    <?php
    $u = new User();
    if($u->isRegistered()) { ?>
    <!-- ログイン時表示 -->
    </div>
    <?php } ?>

<?php Loader::element('footer_required'); ?>

</body>
</html>