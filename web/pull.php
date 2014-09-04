<?php
echo "&gt git pull";
$ret = nl2br(shell_exec("cd \"C:\Documents and Settings\Administrador\GitHub\bdusite\" & git pull 2>&1"));
echo $ret."<br>";

echo "&gt copyser";
$ret = nl2br(shell_exec("copyser 2>&1"));
echo $ret."<br>";

echo "Done! :3";
?>