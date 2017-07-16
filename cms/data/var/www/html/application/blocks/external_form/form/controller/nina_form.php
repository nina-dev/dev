<?php
namespace Application\Block\ExternalForm\Form\Controller;
use Concrete\Core\Controller\AbstractController;
use Core;
use UserInfo;

class NinaForm extends AbstractController {
public function action_send_mail($bID = false)
  {
  if ($this->bID == $bID) {
  // validation/form ヘルパーを呼び出し
    $val = Core::make('helper/validation/form');
    $val->setData($this->post());

    // バリデーション設定
    // $val->addRequired('name', '名前を入力してください。');
    // $val->addRequiredEmail('email', '有効なメールアドレスを入力してください。');
    // $val->addRequired('like', '好きな柴犬を選択してください。');
    // バリデーション実行と結果の取得
    if (!$val->test()) {
      // エラーあり
      $errorArray = $val->getError()->getList(); // エラーメッセージの取得
      $this->set('error', $errorArray); // $error にエラーメッセージを格納
    } else {
      // エラーなし
      $mh = Core::make('helper/mail'); // メールヘルパー呼び出し
      // メールヘッダーを設定
      $mh->to($this->post('email')); //登録者への自動返信
      $mh->bcc('y.onishi.nina@gmail.com'); //メール管理者へbcc送信
      $mh->from('y.onishi.nina@gmail.com', 'ニナ・アーキタイプ'); //メール送信元
      // メールの内容を取得
      $mh->addParameter('name', $this->post('name'));
      $mh->addParameter('email', $this->post('email'));
      $mh->addParameter('category', $this->post('category'));
      $mh->addParameter('text', $this->post('text'));
      // メール送信
      $mh->load('return_mail'); // メールテンプレートの読み込み
      $mh->sendMail(); // メール送信
      $this->set('response', true); // ステータスを設定
      return true;
    }
  }
  }
}
