<?php
require_once($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php"); 
if(@!valid_input($_POST['id'])) {
	$ret = false;
}

$link = db_connect();
$sql = "UPDATE a_contacto SET solved=1 WHERE id=?";
$stmt = $link->prepare($sql);
if($stmt) {
	$stmt->bind_param("i",$_POST['id']);
	$stmt->execute();
	if($stmt->affected_rows) {
		$ret = true;
	} else $ret = false;
}

echo json_encode(array("result"=>$ret));
?>