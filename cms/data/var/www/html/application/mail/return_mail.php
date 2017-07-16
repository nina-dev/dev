<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
// タイトル
$subject = '【自動返信】お問い合わせありがとうございます';
// 本文
$body = "（お問い合わせ内容）\r\n";
$body .= $name." 様\r\n";
$body .= "メールアドレス：".$email."\r\n";
$body .= "お問い合わせ項目：".$category."\r\n";
$body .= "お問い合わせ内容：".$text."\r\n";