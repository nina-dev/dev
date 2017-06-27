<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

<div class="l-content--lower">


  <div class="l-service">

    <p class="l-service__ttl c-contentTtl--secondary">サービス</p>

    <h2 class="l-service__cache">伝わるUIデザインでオーダーメイドな解決策をつくります</h2>

    <div class="l-service__inner">
      <ul class="l-service__inner__item">
        <li class="l-service__inner__item__col">
          <div class="c-thumbnail--table">
            <p class="c-thumbnail--table__item--img">
              <img src="<?php echo $this->getThemePath(); ?>/img/service/03.png" alt="">
            </p>
            <div class="c-thumbnail--table__item--detail--right">
              <h2 class="c-thumbnail--table__item__ttl">UIデザイン</h2>
              <p class="c-thumbnail--table__item__text">ユーザーとの繋がりを作る上で重要な、どう感じてほしいか、どう使って欲しいか。サービスやコンテンツを理解した上で、クライアントがコンテンツを通して実現したいこと・目的に対してユーザーを誘導する手段としてのデザインを提案します。</p>

              <div class="c-thumbnail--table__item__btn">
                <p class="c-btn--tertiary"><a href="/service/design" title="">VIEW MORE</a></p>
                
              </div>

              

            </div>

          </div>

        </li>
        <li class="l-service__inner__item__col">
          <div class="c-thumbnail--table">
            <p class="c-thumbnail--table__item--img">
              <img src="<?php echo $this->getThemePath(); ?>/img/service/02.png" alt="">
            </p>
            <div class="c-thumbnail--table__item--detail--right">
              <h2 class="c-thumbnail--table__item__ttl">レスポンシブデザイン</h2>

              
              <p class="c-thumbnail--table__item__text">多数の案件の経験を基に、お客様との密なコミュニケーションを大事に、デザインとパフォーマンスを両立したレスポンシブWebデザインで、ユーザーにとっての「見やすい」「使いやすい」をサイト上で展開し、コンテンツ訴求をサポートします。 </p>

              <div class="c-thumbnail--table__item__btn">
                <p class="c-btn--tertiary"><a href="/service/responsive" title="">VIEW MORE</a></p>
                
              </div>

            </div>


          </div>

        </li>
        <li class="l-service__inner__item__col">
          <div class="c-thumbnail--table">
            <p class="c-thumbnail--table__item--img">
              <img src="<?php echo $this->getThemePath(); ?>/img/service/01.png" alt="">
            </p>
            <div class="c-thumbnail--table__item--detail--right">
              <h2 class="c-thumbnail--table__item__ttl">ウェブコンサルティング</h2>
              <p class="c-thumbnail--table__item__text">アクセス解析や競合分析による自社・他社を含むサイト内外の「現状分析」、サイトを戦略レベルから見直し、クライアントにとっての理想的なユーザー獲得のための、ウェブプロモーション・Web活用の改善プロセスのコンサルティングサービスを提供しています。</p>

              <div class="c-thumbnail--table__item__btn">
                <p class="c-btn--tertiary"><a href="/service/support" title="">VIEW MORE</a></p>
                
              </div>

            </div>

          </div>

        </li>
      </ul>
    </div>




  </div>
</div>

<div class="l-content--secondary">

  <div class="p-related">

    <p class="p-related__cache">あなたにオススメの記事</p>
    <p class="p-related__text--attention">当サイトは発信型メディアとして、近日リニューアルします。</p>


    <ul class="p-related__item">

      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/01.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">制作依頼で失敗しない５つのポイントをまとめてみました。</p>
      </li>
      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/02.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">最近のお仕事でやっていることを公開します。</p>
      </li>
      <li class="p-related__item__box c-thumbnail--large">
        <p class="c-thumbnail--large__item--img"><img src="<?php echo $this->getThemePath(); ?>/img/article/03.jpg"></p>
        <p class="c-thumbnail--large__item--ttl--related">いまWebディレクターに求められる「解析提案力」</p>
      </li>


    </ul>
  </div>


</div>

<?php
$this->inc('elements/footer.php');
?>
