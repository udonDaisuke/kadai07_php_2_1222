<?php
error_reporting(0);
require_once("./funcs_v1.php");
session_start();
    $user_id = $_POST["user_id"];
    $user_pass = $_POST["password"];
    $user_pass_hash = password_hash($user_pass,PASSWORD_DEFAULT);
    $user_nickname = $_POST["nickname"];

    // DB接続
    $pdo = db_conn("gs_bm_table_2");
    // SQL宣言        $stmt = $pdo->prepare("
    $stmt = $pdo -> prepare("
        SELECT * FROM user WHERE user_id = :user_id");
    // バインド変数を用意
    $stmt->bindValue(':user_id', $user_id, PDO::PARAM_STR);
    //  3. 実行
   // 実行 false意外が返ってくるとき、ユーザーが既に存在する
    $member = sqlTry($stmt);
    if(!$member){
        //登録処理
        $stmt = $pdo->prepare("
        INSERT INTO user(user_id,pass,nickname) 
        VALUES (:user_id,:pass,:nickname);
        ");
        // バインド
        $stmt->bindValue(':user_id', $user_id, PDO::PARAM_STR);
        $stmt->bindValue(':pass', $user_pass_hash, PDO::PARAM_STR);
        $stmt->bindValue(':nickname', $user_nickname, PDO::PARAM_STR);
        //  実行
        $status = $stmt->execute() ;
        $_SESSION['login_status'] = false;
        redirect("./index.php?login_status=registration_done");

    }else{
        $_SESSION['login_status'] = false;
        redirect("./index.php?login_status=registration_failure_user_exist");

    }




?>

<div class="external-article-widget">
<a href="https://v97ug.github.io/prog-school-cooking-site/" rel="noopener noreferrer nofollow" target="_blank">
<strong class="external-article-widget-title">
ホームページのコーディング ポートフォリオ
</strong>
<em class="external-article-widget-description">
ホームページ(2カラム)のコーディングを実装しました。下層ページは、お問い合わせページ、お菓子のページ、渋谷教室のページを
</em>
<em class="external-article-widget-url">
v97ug.github.io
</em>
</a><a class="external-article-widget-image" href="https://v97ug.github.io/prog-school-cooking-site/" rel="noopener noreferrer nofollow" style="background-image: url('https://assets.st-note.com/production/uploads/ext/bb19e66993d4984f2f8b3029f63ae4c0d9204e05d8ca224a080d363e84af.png?x-type=ogp');" target="_blank"></a>

</div>