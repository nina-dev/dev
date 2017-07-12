<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
?>

<div class="l-content--lower">

  <span class="p-bg--item--primary--under c-square--primary"></span> <span class="p-bg--item--secondary--under c-square--tertiary"></span>


  <div class="l-article">

    <p class="l-article__ttl c-contentTtl--secondary">サービス</p>

    <h2 class="l-article__cache">ユーザーの行動に注視することで、可能性が広がります。</h2>

    <ul class="l-article__item c-tab">
      <li><a href="#">ウェブコンサルティング</a></li>
    </ul>

    <p class="l-article__img"><img src="<?php echo $this->getThemePath(); ?>/img/service/01.png" alt=""></p>


    <div class="l-article__inner">

      <p>せっかくリニューアルしたWebサイトや更新されたWebページ、そのままにしていませんか？どんなに綺麗で洗練されたサイトでも、勝手に見込みあるユーザーはきてくれません。<b>Webサイトはリニューアルしたからといって、テレビCMのように勝手に告知されるものではない</b>のです。</p>
      <p>ニナ・アーキタイプでは、クライアントにとっての理想的なユーザー獲得のための、ウェブプロモーション・Web活用の改善プロセスのコンサルティングサービスを提供しています。</p>

      <h3>ターゲットがどこにいるか。にも注視します</h3>
      <p>Webサイト改修等のヒアリングの中で、よく耳にするキーワードは「ターゲットについて」。コンテンツをよくしたい想いからターゲットの観察に力を入れるのは勿論間違いではありません。しかし、それだけはWebサイトを通した成果への期待は見込めないのも事実です。</p>

      <p><b>理想的なユーザーがどこに。そしてどういうモチベーションでいるか。</b>その仮説立てのプロセスこそが、質の高い戦略や効果のあるPDCAサイクルをつくる歯車になりえます。</p>

      <h3>クライアントのマーケティング効果を最大限引き出します</h3>
      <p>ニナ・アーキタイプの顧客の半分が、マーケターと言われるクライアントです。<b>数字以上の価値をつくる印象効果に対する提案依頼</b>や<b>サイト内の部分的な改修</b>などもお受けいたします。<br>ぜひ、おまかせください。</p>
    </div>

    <div class="l-article__item--cta c-cta">

      <p class="c-cta__ttl">お仕事のご依頼はこちらでお受けします</p>

      <div class="c-cta__inner">
        <p class="c-cta__inner__col">レスポンシブWebデザインサイト構築・コーポレートサイトやサービス画面のUIデザインなど、お気軽にお問い合わせください。</p>
        <p class="c-cta__inner__col">2営業日以内にご連絡いたします。</p>
        <p class="c-cta__inner__btn c-btn--secondary--orange"><a href="#">現在コンタクトフォームは停止しています</a></p>
      </div>

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
