<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php');
echo "blank";
 ?>

<main>
	<?php
	$a = new Area('Main');
	$a->display($c);
	?>
</main>

<?php  $this->inc('elements/footer.php'); ?>
