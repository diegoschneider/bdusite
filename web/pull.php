<?php
echo "&gt git pull<br>";
$ret = exec("../git pull");
echo $ret."<br>";
echo "&gt copyser<br>";
$ret = exec("copyser");
echo $ret."<br>";
echo "Done! :3";
?>