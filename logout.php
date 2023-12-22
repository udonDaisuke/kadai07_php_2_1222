<?php
session_start();

$_SESSION = array();
var_dump($_SESSION[$msg]);
echo "ログアウトしました";
echo "<a href='./index.php'>トップに戻る</a>";

?>