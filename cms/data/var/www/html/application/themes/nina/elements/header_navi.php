<?php defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<div class="p-menu">
	<nav>
		<ul class="p-menu__item--primary">

			<?php
			// $a = new GlobalArea('Header Navigation');
			// $a->display();
			?>

			<li>
				<a href="/">ホーム</a>
			</li>
			<li>
				<a href="/about">ニナ・アーキタイプとは</a>
			</li>

			<li>
				<a href="/service">サービス</a>
				<ul class="p-menu__item--secondary">
					<li><a href="/service/design">UIデザイン</a></li>
					<li><a href="/service/responsive">レスポンシブデザイン</a></li>
					<li><a href="/service/support">ウェブコンサルティング</a></li>
					<li></li>
				</ul>
			</li>

			<li>
				<a href="/flow">お仕事のながれ</a>
			</li>

			<li>
				<a href="/price">料金について</a>
			</li>
		</ul>
		<p class="p-menu__cta c-btn--secondary--orange">
			<a href="#">COMMING SOON</a>
		</p>
	</nav>
</div>
