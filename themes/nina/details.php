<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php'); 
echo 'details';
?>
<div id="outercontainer1">

	<div id="outercontainer2">



		<div id="container">

			<div id="contents">

				<div id="furisode-detail">

					<?php

					$a = new Area('Main');

					$a->display($c);
					
					?>
					
				</div>


				<div style="clear:both">


				</div>
			</div>

		</div>

	</div>


	<?php
	$this->inc('elements/footer.php'); 
	?>
