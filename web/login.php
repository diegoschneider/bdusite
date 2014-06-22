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
		echo "Hashed pass: ". hash_pwd_bcrypt($_GET['pass'],$_GET['salt']);
	?>
</div>
</body>

</html>