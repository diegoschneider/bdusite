<?php
require("./src/script/functions.php");
if(isset($_SESSION['user'])) {
	$_SESSION['user']->logout = true;
}

header("location: /");

?>