# コーディングガイドライン



## Ⅰ 基本方針

### 1. ガイドラインの目的

本ガイドラインは、以下の3つの目的を達成するために作成している。

#### ■ クオリティの向上

最適だと思われるルールをガイドラインとして制定することで、クオリティの向上を図る。

#### ■ クオリティの均一化クアップを行う。

担当者によって制作物のバラつきを防ぐ。

#### ■ 制作の効率化

* ルールがあることでタイムロスを防ぐ。  
* ルールを決めておくことで、無駄なチェック・修正の工数を削減する。

<p class="styleguideNote"><strong>上記目的を達成するために、常に見直し・更新を行ない、ガイドラインの制定と共有を図る。</strong></p>

### 2. コーディング6大原則

* Webサイト制作者は本ガイドラインをコーディングの基準とし、順守すること。
* サイトの内容や構成を考慮した上で、適切なマークアップを行う。
* できる限りシンプルに、必要最小限の記述でコーディングを行う。
* 運用/更新が想定される箇所においては、内容の増減に対応できるよう可能な限り配慮する。
* サイトの構成要素は、運用のしやすさと複数人での制作を考慮した作りにする。
* ユーザーの閲覧環境を考慮した作りにする。



## Ⅱ HTML制作ルール

### 1. 文字コード

原則UTF-8とする。

### 2. 改行コード

原則 LFとする。

### 3. DOCTYPE

#### ■ PC

HTML5

#### ■ SP

HTML5

### 4. マークアップ全般

* セマンティックなマークアップを行う。
* W3Cが勧告する仕様に準拠したマークアップを行う。

### 5. 改行とインデント

* ソースの改行は、フレージング・コンテンツ以外の要素の終了タグの後等、適宜行う。
* body内の要素には、構造に合わせて適切にインデントを施し、視認性の高いソースコードを実現する。
* インデントには半角スペース4つを使用し、タブ、全角を使用しない。

### 6. パスの記述ルール

サイト内リンク/画像のリンク共に、指定がない場合は原則としてルート相対パスとする。

<p class="styleguideIcn">例）</p>

```html
<a href="/company/index.html">企業情報</a>
```

### 7.インクルードファイルについて

ファイルのインクルードは弊社システムで行うため、コーディング時はインクルードしない。  
（DWのテンプレートファイル、ssi、PHP等）

### 8. タグの記述ルール

* ####■ \<body\>タグ
    bodyタグにはid,class等属性を使用しない。  
    \<body\>部分はシステム上全ページ共通で使用するため、ページ固有のIDを振ったりせず、\<body\>のみで使用する。

    <p class="styleguideIcn">✕</p>

    ```html
    <body id="pageID_top" class=”style”>
    ```

    <p class="styleguideIcn">○</p>

    ```html
    <body>
    ```

* ####■ \<hX\>タグ
    ページ内では文書の論理構造に合わせて、必ず見出し要素を使用すること。  
    （h1の次にh3が来たりしない）

* ####■ \<img\>タグ
    * **・imgタグには必ず画像サイズ属性と属性値を指定すること。**  
        ※画像のサイズを指定することによって、ページを読み込む早い段階でレイアウトが決定されるため、全体のレンダリングが早く終了する。  
        *※スマートフォンサイトを作成する際、画像サイズを%で指定する必要がある場合はcssで設定し、\<img\>タグには表示サイズでサイズ属性を指定する。*
    * **・画像は\<div\>直下に\<img\>を入れるなどはせず、文書の理論構造に合わせて、必ず\<p\>や\<li\>に内包する。**
    * **・意味のある画像は、原則背景ではな<img>要素として配置する。**  
    ※文書を補完する画像、単独で内容を説明している画像、メインイメージなど
    * **・alt属性にて画像の代替となるテキストを設定する。**  
    ※特に指定が無い場合は、その画像の簡易説明をaltの内容とする。  
    ※装飾用の画像など、相応しい代替テキストが存在しない画像の場合には、「alt=""」と設定する。（装飾用の画像はできるだけ背景にする）

### 9. その他の記述ルール

英数字は半角で統一とする。

* *✕：２０１１年１０月３１日*

    *○：2011年10月31日*

要素名および属性名はすべて小文字で記述する。

* *要素：div、p、input、img*

    * *属性：id、class、type、src、data*

クラス名の記述順は、class="l-xx c-xx p-xx u-xx" とする。

終了タグは原則として省略しないが、空要素については省略する。

* <p class="styleguideIcn">「空要素」例）</p>

    ```html
    <img src="">
    <br>
    <hr>
    etc...
    ```

半角カタカナは原則として使用しない。

機種依存文字の記述には、小なり不等号大なり不等号のみエンティティ文字を使用する。

フォームのsubmitボタンは、input:submit ではなく、button:submit でマークアップする。  
（閉じタグが分離されて柔軟性があるため）



## Ⅲ CSS制作ルール

### 1. 基本構成

原則として、Sass運用としCSSは直接編集せず、FLOCSS（フロックス）の設計思想に基づき作成する。  
（styleguide/ディレクトリ内にあるstyleguide.cssはその限りではない。page/ディレクトリ及び、app.scssについては2.ソースファイルの項で補足）

FLOCSS構成配下のSassファイルは_（アンダースコア）を付加する。

ファイル名はローワーキャメルケースで命名する。

<p class="styleguideIcn">構成（ディレクトリ構造も下記に基づく）</p>

```html
sass/
   ├ pc/
   │  ├ foundation/
   │  │ ※リセットとベースのスタイルを定義
   │  │
   │  ├ layout/
   │  │ ※ヘッダー、フッター、コンテンツエリア等の広範囲にかかるコンテナーブロックのスタイルを定義
   │  │
   │  ├ object/
   │  │   ├ component/
   │  │   │ ※再利用性の高い小さなモジュールのスタイルを定義
   │  │   │ （c-btn、c-ttl etc...）
   │  │   │
   │  │   ├ project/
   │  │   │ ※プロジェクト固有のパターン（サイトのコンテンツカテゴリー）ごとに独立したスタイルを定義
   │  │   │ （p-article etc...）
   │  │   │
   │  │   └ utility/
   │  │       ※componentとprojectで解決できないわずかな調整のための汎用的なスタイルを定義
   │  │
   │  ├ page/
   │  └ app.scss
   │
   └ sp/
        ├ foundation/
        ├ layout/
        ├ object/
        │   ├ component/
        │   ├ project/
        │   └ utility/
        ├ page/
        └ app.scss
```

### 2. ソースファイル

* ####■ 各ページ用のCSS

    原則として、各ページ用のCSSを1ファイルのみ用意しリンクする。  
    各ページ用のCSSは、上記 sass/pc/page/ 及び sass/sp/page/ ディレクトリにページに基づいた命名ののSassファイルを作成し、必要なスタイル定義をimportして生成する。  

    <p class="styleguideIcn">ページ用Sassファイル作成の例）</p>

    ```sass
    sass/pc/page/top.scss
    ```

    <p class="styleguideIcn">作成したページ用Sassファイルの内容例）</p>

    ```sass
    @charset "utf-8";

    @import "foundation/variables";
    @import "foundation/mixin";
    @import "foundation/animation";
    @import "foundation/ress";
    @import "foundation/base";
    @import "layout/container";
    @import "layout/header";
    @import "layout/footer";
    @import "layout/content";
    @import "object/component/button";
    @import "object/component/title";
    @import "object/utility/example";
    @import "object/project/header";
    @import "object/project/footer";
    @import "object/project/side";
    @import "object/project/globalNav";
    @import "object/project/top";
    ```

* ####■ app.scss

    app.scssは、スタイルガイドで全てのスタイルを読み込むためのファイル。  
    *全てのスタイル定義をimportする必要があるため、運用上で生じるimport元ファイルの増減毎にapp.scssも更新する*

### 3. 文字コード

HTMLに合わせる。

### 4. 記述方法

コメントアウトはクラス名で用途が判別し難い場合に下記の2パターンで記述する。

* <p class="styleguideIcn">大見出し</p>

    ```sass
    // title
    // --------------------------
    ```

* <p class="styleguideIcn">小見出し、注記</p>

    ```sass
    // sub title or description
    ```

フォントファミリーは以下の順序で記述する。

* <p class="styleguideIcn">フォントファミリー</p>

    ```sass
    "ヒラギノ角ゴ Pro W3", "Hiragino Kaku Gothic Pro", Osaka, "メイリオ", Meiryo, "ＭＳ Ｐゴシック", "MS P Gothic", Verdana, sans-serif;
    ```

Block、Element、Modifierそれぞれはローワーキャメルケースで命名する。

1行1プロパティとし、各プロパティはインデントを付ける。

クラス名とクラス名のあとの波括弧（中括弧）の間及び、プロパティの値の前には半角スペースを入れる。

スタイル定義内のセレクタ間は1行空ける。

BEMのElementとModifierのクラス名は入れ子にし、& で連結する。

* <p class="styleguideIcn">例）</p>

    ```sass
    .p-blockBlock {
        &__elementElement {
            &--modifierModifier {}

            &--modifierModifier {}
        }

        &__element {
            &--modifier {}

            &--modifier {}

            &--modifier {}
        }
    }
    ```

    ※但し、入れ子のセレクタが1つの場合は、1行で記述する。

    <p class="styleguideIcn">✕</p>

    ```sass
    .p-blockBlock {
        &__elementElement {
            &--modifierModifier {
                margin: 0;
            }
        }
    }
    ```

    <p class="styleguideIcn">○</p>

    ```sass
    .p-blockBlock__elementElement--modifierModifier {
        margin: 0;
    }
    ```

初めてコードを見たコーダーに通じ難いクラス名の省略はしない。

* <p class="styleguideIcn">✕</p>

    ```html
    <div class=”p-con”></div>
    ```

    <p class="styleguideIcn">○</p>

    ```html
    <div class=”p-content”></div>
    ```

子孫指定のスタイル定義は原則として不可だが下記に限り可能とする。

* ・ul liタグのように親子関係が確立した要素の子要素にスタイル定義する場合は、親からの >（大なり）指定も可能とする

    ・スタイルの直タグ指定は親子関係が確立した要素以外に、html、body及び、フレージング・コンテンツに分類されるタグ程度に留める

BEMの構造は、Blockとの依存関係が認識できれば、HTML構造には依存しなくてもよい。  

* <p class="styleguideIcn">例）</p>

    ```html
    <div class="p-blockEx">
        <ul class="p-blockEx__listEx">
            <li>
                <p class="c-btn p-blockEx__btnEx"><a>ボタン</a></p>
            </li>
        </ul>
        <div class="p-blockEx__contentEx">
            <h2 class="p-blockEx__contentEx__ttl">タイトル</h2>
            <ul class="p-blockEx__listEx">
                <li>
                    <p class="c-btn p-blockEx__btnEx"><a>ボタン</a></p>
                </li>
            </ul>
        </div>
        <div class="p-blockEx__boxEx">
            <h2 class="p-blockEx__boxEx__ttl">タイトル</h2>
            <p class="p-blockEx__boxEx__txt">テキストテキストテキスト</p>
            <p class="c-btn p-blockEx__btnEx"><a>ボタン</a></p>
        </div>
    </div>
    ```

BEMのElementは、原則として1つのBlock内で2つまでとする。  

BEMのModifierは、マルチクラス前提ではなく1つのクラスで定義する。  

* <p class="styleguideIcn">✕</p>

    ```html
    <p class="c-btn c-btn--cta"><a>ボタン</a></p>
    ```

    <p class="styleguideIcn">○</p>

    ```html
    <p class="c-btn--cta"><a>ボタン</a></p>
    ```

疑似セレクタは、原則として下記以外は使用しない。  
（InternetExplorer8考慮のため、表示がリッチに再現できなくても情報が提供できるレベルなら下記以外を使用してもよい）

* <p class="styleguideIcn">疑似セレクタ</p>

    ```sass
    :link
    :visited
    :hover
    :active
    :checked
    :disabled
    :first-child
    ::before
    ::after
    ```

    ※ InternetExplorer8でも表示させたい場合はシングルコロンで記述

余白およびブロックサイズは、原則として8pxを基準とする。  

上下につけるマージンは原則として下方とし、必要に応じて上方を定義する。  

汎用クラス（u-xx）は多用しない。  
（単純にマージン等をつけるだけのクラス定義は避ける）

メディアクエリを使用する際は、メディアクエリ区切りで定義するのではなく、各セレクタのプロパティ箇所に定義する。

* <p class="styleguideIcn">✕</p>

    ```sass
    .p-contentEx {
        width: 960px;
    }

    .p-boxEx {
        height: 640px;
    }

    @media (XXX) {
        .p-contentEx {
            width: 100%;
        }

        .p-boxEx {
            height: auto;
        }
    }
    ```

    <p class="styleguideIcn">○</p>

    ```sass
    .p-contentEx {
        width: 960px;

        @media (XXX) {
            width: 100%;
        }
    }

    .p-boxEx {
        height: 640px;

        @media (XXX) {
            height: auto;
        }
    }
    ```

Sassの変数は下記ファイルに定義する。

* <p class="styleguideIcn">variables</p>

    ```sass
    sass/pc/foundation/_variables.scss
    sass/sp/foundation/_variables.scss
    ```

Sassのmixinは下記ファイルに定義する。

* <p class="styleguideIcn">mixin</p>

    ```sass
    sass/pc/foundation/_mixin.scss
    sass/sp/foundation/_mixin.scss
    ```

Sassのextendは原則として、1階層までとし、既に何かを継承してるクラスを他のクラスへ継承するのは避ける。  
（継承元を辿り解読するのが困難になるため）

* <p class="styleguideIcn">✕</p>

    ```sass
    .p-contentEx {
        width: 960px;

        &--modifierEx {
            @extend .p-contentEx;
            color: #FFF;
        }

        &--extendEx {
            @extend .p-contentEx--modifierEx;
            margin: 0;
        }
    }
    ```

    <p class="styleguideIcn">○</p>

    ```sass
    .p-contentEx {
        width: 960px;

        &--modifierEx {
            @extend .p-contentEx;
            color: #FFF;
        }

        &--extendEx {
            @extend .p-contentEx;
            margin: 0;
            color: #FFF;
        }
    }
    ```



## Ⅳ JavaScript制作ルール

原則、弊社システムで行うため、指示があったもの以外の作成は必要ない。

作成の必要の有無は別途案件ごとの仕様書に基づく。

### 1. 文字コード

HTMLに合わせる。

ただし、ダウンロードしてくるものは原則変更しない。  
※HTMLファイルとJavaScriptファイルの文字コードが異なる場合、キャラクターセットの指定を行うこと。

```html
<script type="text/javascript" src="" charset="UTF-8"></script>
```

### 2. 記述方法

基本的にjQueryで記述する。

機能単位でファイルを分割し作成する。

ダウンロードしたプラグインファイルは原則としてオリジナルのものに手を加えない。



# 対応環境

プログレッシブエンハンスメント
[参考](https://liginc.co.jp/249012)

## PC

### 対応OS

Mac OS X  
windows

### 対応ブラウザ

Chrome、Safari（macのみ）、Firefox: 最新バージョンのみ  
InternetExplorer: 8〜最新バージョン

## SP

### 対応OS

iOS: 最新バージョン  
Android: 4.4および5.X〜  

### 対応ブラウザ

Safari（iOSのみ）、Chrome、Android Browser（Androidにデフォルトで入ってる場合）: 最新バージョンのみ



# カラー設定

## main
<ul class="styleguideColor">
    <li color="main">
        <strong>main</strong>
        <em>#083972</em>
        $color-main
    </li>
</ul>

## accent
<ul class="styleguideColor">
    <li color="accent--blue">
        <strong>accent--blue</strong>
        <em>#5874D1</em>
        $color-accent--blue
    </li>
    <li color="accent--purple">
        <strong>accent--purple</strong>
        <em>#9966CC</em>
        $color-accent--purple
    </li>
    <li color="accent--green">
        <strong>accent--green</strong>
        <em>#31cbac</em>
        $color-accent--green
    </li>
    <li color="accent--orange">
        <strong>accent--orange</strong>
        <em>#F6A623</em>
        $color-accent--orange
    </li>
    <li color="accent--red">
        <strong>accent--red</strong>
        <em>#ff5577</em>
        $color-accent--red
    </li>
</ul>

## gray
グレーは運用の中で増減する可能性を考慮し、変数名はカラーコードに因んだ命名にする
<ul class="styleguideColor">
    <li color="gray-3">
        <strong>gray: 3</strong>
        <em>#333</em>
        $color-gray-3
    </li>
    <li color="gray-6">
        <strong>gray: 6</strong>
        <em>#666</em>
        $color-gray-6
    </li>
    <li color="gray-a1">
        <strong>gray: a1</strong>
        <em>#A1A1A1</em>
        $color-gray-a1
    </li>
    <li color="gray-c">
        <strong>gray: c</strong>
        <em>#CCC</em>
        $color-gray-c
    </li>
    <li color="gray-f5">
        <strong>gray: f5</strong>
        <em>#F5F8FA</em>
        $color-gray-f5
    </li>
    <li color="gray-f2">
        <strong>gray: f2</strong>
        <em>#F2F2F2</em>
        $color-gray-f2
    </li>
</ul>

## white, black
白と黒はカラーコードが単純なためSassの変数は持たない  
（単純なカラーコードのグレーを変数で持ってるのはサイトで使われるグレーを統一するため）
<ul class="styleguideColor">
    <li color="white">
        <strong>white</strong>
        <em>#FFF</em>
    </li>
    <li color="black">
        <strong>black</strong>
        <em>#000</em>
    </li>
</ul>
