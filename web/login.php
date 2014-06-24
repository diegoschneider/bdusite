<?php
require("./src/script/functions.php");

if(!isset($_POST['user']) || !isset($_POST['pass']) || $_POST['user'] == "" || $_POST['pass'] == "") {
	echo '{"errno":'.INVALID_REQUEST.',"errstr":'.$errordefs[INVALID_REQUEST]."}";
	die();
}

$login = $_SESSION['user']->login($_POST['user'],$_POST['pass']);

echo '{"errno":'.$login.',"errstr":"'.$errordefs[$login].'"}';
die();

?>