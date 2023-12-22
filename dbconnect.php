<?php
//2. DB接続します
try{
    $pdo = new PDO('mysql:dbname=gs_bm_table;charset=utf8;host=localhost','root','');
}catch(PDOException $e){
    exit('DBConnectError:'.$e->getMessage());
}
?>