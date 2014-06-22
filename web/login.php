<?php
require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php");
print_errors();
?>

<html>
<head>
	<?php style_head(); ?>
</head>
<body>
<div id="content">
	
	<h1>Login - En Proceso</h1>
	<a href="/">Volver</a>
	<br>
	<?php 
		$hash = password_hash($_GET['pass'], PASSWORD_BCRYPT, array('cost' => 11) );

		echo "Hashed pass: ".$hash;
		echo "<br>Verifyed: ".password_verify($_GET['pass'],$hash);
	?>
</div>
</body>

</html>