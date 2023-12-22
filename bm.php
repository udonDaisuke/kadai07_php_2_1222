<?php

    function h($str){
        return htmlspecialchars($str,ENT_QUOTES);
    };

    function setBm(){
        session_start();

        require("./dbconnect.php");

        $name = $_POST['name'];
        $URL = $_POST['URL'];
        $summary = $_POST['summary'];

        $user_id = $_SESSION['user_id'];
        $nickname = $_SESSION['nickname'];

        //３ SQL作成 ブックマーク投稿
        $stmt = $pdo->prepare("
            INSERT INTO bm_main(name,URL,summary,postby)
            VALUES(:name,:URL,:summary,:postby);
            ");
        //  2. バインド変数を用意
        $stmt->bindValue(':name', $name, PDO::PARAM_STR);
        $stmt->bindValue(':URL', $URL, PDO::PARAM_STR);
        $stmt->bindValue(':summary', $summary, PDO::PARAM_STR);
        $stmt->bindValue(':postby', $nickname, PDO::PARAM_STR);

        $status = $stmt->execute();

        //4 SQL作成 ブックマーク取得
        $stmt = $pdo->prepare("
            SELECT * FROM bm_main ");
        //  2. バインド変数を用意

        $status = $stmt->execute();
        $data_all = $stmt->fetch();

        var_dump($data_all);
    }

    function getBm($label = "*", $from="1"){
        session_start();
        require("./dbconnect.php");
        //３ SQL作成 ブックマーク投稿
        $stmt = $pdo->prepare('SELECT '.$label.' FROM bm_main WHERE '.$from);

        $status = $stmt->execute();
        $data_all = $stmt->fetch();
        //３．データ表示
        
        $view="";

        if ($status==false) {
            //execute（SQL実行時にエラーがある場合）
            $error = $stmt->errorInfo();
            exit("ErrorQuery:".$error[2]);

        }else{
        //Selectデータの数だけ自動でループしてくれる
        //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
            while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
                $view_tmp = '';
                $view_tmp .='<div class ="post_area head"></div>';
                $view_tmp .='<span class ="post_subject">';
                $view_tmp .=h($result['name'])."  post by :". h($result['postby']);
                $view_tmp .='</span>';
                $view_tmp .='<span class ="post_text">';
                $view_tmp .=h($result['summary']);
                $view_tmp .='</span>';
                $view_tmp .='<a class ="post_URL" href = "';
                $view_tmp .=h($result['URL']);
                $view_tmp .='" target = "blank">参考URL</a>';
                $view .='<div class ="post_area">'.$view_tmp.'</div>';
                echo $view."|||||";

            }
            return $view;
        }
    }

    setBm();
    $bm = getBm();
?>


<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style_prev.css">
    <title>Document</title>
</head>
<body>
    <?=$bm?>
</body>
</html>