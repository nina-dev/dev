<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php'); 
?>

<div id="container">

 <div id="contents">

<div id="main">
<h2 class="page-title">お知らせ</h2>
 <div class="whats_new">
 <h3><?php echo $c->getCollectionName(); ?></h3>
 <h4><?php echo $c->getCollectionDatePublicObject()->format('Y-m-d'); ?></h4>
 <p><?php echo $c->getCollectionDescription() ?></p>
							<!-- news detail 新着情報詳細 -->
							<?php
								$productDetail = $c->getAttribute('whats_new');
								echo $productDetail;            
							?><!-- end news detail -->
 </div>
         <?php
         $a = new Area('Main');
         $a->display($c);		
         ?>
<ul class="page_back">
<li><a href="http://www.mk-cao.co.jp/news">&gt;&gt; お知らせ一覧へ戻る</a></li>
</ul>    
</div>
            
<div id="side">
         <?php
         $a = new Area('Sidebar');
         $a->display($c);		
         ?>     
      </div>

</div>

</div>
</div> <!-- end of container -->

	<div class="cleaner"></div>
</div>
</div> <!-- end of outercontainer1 -->

<?php
$this->inc('elements/footer.php'); 
?>
