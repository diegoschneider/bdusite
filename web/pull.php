<?php
echo "&gt git pull & checkout<br>";
$ret = nl2br(shell_exec("cd \"C:\\Documents and Settings\\Administrador\\GitHub\\bdusite\\\" & git checkout ".$_GET["checkout"]." & git pull 2>&1"));
echo $ret."<br>";

sleep(5);
echo "&gt copyser";
$ret = nl2br(shell_exec("copyser 2>&1"));
echo $ret."<br>";

echo "Done! :3";
?>