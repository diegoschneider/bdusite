<?php
require("./src/script/functions.php");
$ret = new stdClass;
if(!isset($_POST['user']) || !isset($_POST['pass']) || $_POST['user'] == "" || $_POST['pass'] == "") {
	$ret->errno = INVALID_REQUEST;
	$ret->errstr = $errordefs[INVALID_REQUEST];
	echo json_encode($ret);
	//echo '{"errno":'.INVALID_REQUEST.',"errstr":'.$errordefs[INVALID_REQUEST]."}";
	die();
}

$login = $_SESSION['user']->login($_POST['user'],$_POST['pass']);
$ret->errno = $login;
$ret->errstr = $errordefs[$login];
echo json_encode($ret);
//echo '{"errno":'.$login.',"errstr":"'.$errordefs[$login].'"}';
die();

?>