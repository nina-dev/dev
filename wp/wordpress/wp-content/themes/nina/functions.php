<?php

/* 自動アップグレードを停止
* ---------------------------------------- */
add_filter( 'automatic_updater_disabled', '__return_true' );

/* アイキャッチ
* ---------------------------------------- */
add_theme_support('post-thumbnails', array( 'post', 'page') );
set_post_thumbnail_size( 304, 214 ); // 通常の投稿サムネイル

//アイキャッチ画像の追加
add_theme_support('small_thumbnail');
add_theme_support('middle_thumbnail');
add_theme_support('large_thumbnail');
add_theme_support('post_thumbnail');

//サイズの指定
add_image_size('small_thumbnail', 72, 72, true);
add_image_size('middle_thumbnail', 251, 147, true);
add_image_size('large_thumbnail', 1004, 588, true);
add_image_size('post_thumbnail', 1506, 0, true);

// カスタムナビゲーションメニュー
add_theme_support('menus');

/* 固定ページにタグを表示
* ---------------------------------------- */
function add_tag_to_page() {
 register_taxonomy_for_object_type('post_tag', 'page');
}
add_action('init', 'add_tag_to_page');

/* パンくず
* ---------------------------------------- */
if( !function_exists('birth_breadcrumb') ){

  function birth_breadcrumb(){

    global $post;
    // ポストタイプを取得
    $post_type = get_post_type( $post );

    $bc  = '<ol class="p-breadcrumb__list">';
    $bc .= '<li class="c-text--small"><a href="'.home_url().'">ホーム</a></li>';

    if( is_home() ){
      // メインページ
      $bc .= '<li>最新記事一覧</li>';
    }elseif( is_search() ){
      // 検索結果ページ
      $bc .= '<li>「'.get_search_query().'」の検索結果</li>';
    }elseif( is_404() ){
      // 404ページ
      $bc .= '<li>ページが見つかりませんでした</li>';
    }elseif( is_date() ){
      // 日付別一覧ページ
      $bc .= '<li>';
      if( is_day() ){
        $bc .= get_query_var( 'year' ).'年 ';
        $bc .= get_query_var( 'monthnum' ).'月 ';
        $bc .= get_query_var( 'day' ).'日';
      }elseif( is_month() ){
        $bc .= get_query_var( 'year' ).'年 ';
        $bc .= get_query_var( 'monthnum' ).'月 ';
      }elseif( is_year() ){
        $bc .= get_query_var( 'year' ).'年 ';
      }
      $bc .= '</li>';
    }elseif( is_post_type_archive() ){
      // カスタムポストアーカイブ
      $bc .= '<li>'.post_type_archive_title('', false).'</li>';
    }elseif( is_category() ){
      // カテゴリーページ
      $cat = get_queried_object();
      if( $cat -> parent != 0 ){
        $ancs = array_reverse(get_ancestors( $cat->cat_ID, 'category' ));
        foreach( $ancs as $anc ){
          $bc .= '<li class="c-text--small"><a href="'.get_category_link($anc).'">'.get_cat_name($anc).'</a></li>';
        }
      }
      $bc .= '<li class="c-text--small">'.$cat->cat_name.'</li>';
    }elseif( is_tag() ){
      // タグページ
      $bc .= '<li class="c-text--small">'.single_tag_title("",false).'</li>';
    }elseif( is_author() ){
      // 著者ページ
      $bc .= '<li class="c-text--small">'.get_the_author_meta('display_name').'</li>';
    }elseif( is_attachment() ){
      // 添付ファイルページ
      if( $post->post_parent != 0 ){
        $bc .= '<li class="c-text--small"><a href="'.get_permalink( $post->post_parent ).'">'.get_the_title( $post->post_parent ).'</a></li>';
      }
      $bc .= '<li class="c-text--small">'.$post->post_title.'</li>';
    }elseif( is_singular('post') ){
      $cats = get_the_category( $post->ID );
      $cat = $cats[0];

      if( $cat->parent != 0 ){
        $ancs = array_reverse(get_ancestors( $cat->cat_ID, 'category' ));
        foreach( $ancs as $anc ){
          $bc .= '<li class="c-text--small"><a href="'.get_category_link( $anc ).'">'.get_cat_name($anc).'</a></li>';
        }
      }
      $bc .= '<li class="c-text--small"><a href="'.get_category_link( $cat->cat_ID ).'">'.$cat->cat_name.'</a></li>';
      $bc .= '<li class="c-text--small">'.$post->post_title.'</li>';
    }elseif( is_singular('page') ){
      // 固定ページ
      if( $post->post_parent != 0 ){
        $ancs = array_reverse( $post->ancestors );
        foreach( $ancs as $anc ){
          $bc .= '<li class="c-text--small"><a href="'.get_permalink( $anc ).'">'.get_the_title($anc).'</a>';
        }
      }
      $bc .= '<li class="c-text--small">'.$post->post_title.'</li>';
    }elseif( is_singular( $post_type ) ){
      // カスタムポスト記事ページ
      $obj = get_post_type_object($post_type);

      if( $obj->has_archive == true ){
        $bc .= '<li class="c-text--small"><a href="'.get_post_type_archive_link($post_type).'">'.get_post_type_object( $post_type )->label.'</a></li>';
      }
      $bc .= '<li class="c-text--small">'.$post->post_title.'</li>';
    }else{
      // その他のページ
      $bc .= '<li class="c-text--small">'.$post->post_title.'</li>';
    }

    $bc .= '</ol>';

    echo $bc;

  }
}

/* 本文抜粋を取得する関数
* ---------------------------------------- */
function new_excerpt_mblength($length) {
  return 80;
}
add_filter('excerpt_mblength', 'new_excerpt_mblength');

function new_excerpt_more($more) {
  return '…';
}
add_filter('excerpt_more', 'new_excerpt_more');


/* ページャーの生成
* ---------------------------------------- */
if( !function_exists('pagination') ){
  function pagination($pages = '', $range = 2)
  {
     $showitems = ($range * 2)+1;//表示するページ数（５ページを表示）

     global $paged;//現在のページ値
     if(empty($paged)) $paged = 1;//デフォルトのページ

     if($pages == '')
     {
      global $wp_query;
         $pages = $wp_query->max_num_pages;//全ページ数を取得
         if(!$pages)//全ページ数が空の場合は、１とする
         {
          $pages = 1;
         }
       }

     if(1 != $pages)//全ページが１でない場合はページネーションを表示する
     {
      echo "<div class=\"p-pager\">\n";
     //Prev：現在のページ値が１より大きい場合は表示
      if($paged > 1) echo "<a class=\"p-pager__list\" href='".get_pagenum_link($paged - 1)."'>&laquo;</a>\n";

      for ($i=1; $i <= $pages; $i++)
      {
        if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
        {
                //三項演算子での条件分岐
          echo ($paged == $i)? "<span class=\"p-pager__list--current\">".$i."</span>\n":"<a class=\"p-pager__list\" href='".get_pagenum_link($i)."'>".$i."</a>\n";
        }
      }
    //Next：総ページ数より現在のページ値が小さい場合は表示
      if ($paged < $pages) echo "<a class=\"p-pager__list\" href=\"".get_pagenum_link($paged + 1)."\">&raquo;</a>\n";
      echo "</div>\n";
     }
   }
 }

