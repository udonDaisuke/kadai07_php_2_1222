<?php
require_once('./login_registration.php');
userSQL("login");

echo "login<br>";
var_dump($_SESSION);
echo "<a href='./index.php'>戻る</a>";

?>