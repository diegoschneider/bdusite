<?php
require("./src/script/functions.php");
//print_errors();

$login = $_SESSION['user']->login($_POST['user'],$_POST['pass']);
?>

<html>
<head>
	<?php style_head(); ?>
</head>
<body>
<div id="content">
	
	<h1>Login</h1>
	<a href="/">Volver</a>
	<?php
		if($login == 1) {
			echo "<br>Has iniciado sesión";
		} else {
			echo "Error #". $login;
		}
	?>
</div>
</body>

</html>