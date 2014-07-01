<?php
require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php");
?>

<html>
<head>
	<?php style_head(); ?>
</head>
<body>
<?php style_header(); ?>
<div id="content">
	<?php 
		$nav = array();
		$nav[1] = "Agregar usuario";
		style_manage_nav("users", $nav);

		if(isset($_GET['action'])) {
			if($_GET['action'] == 1) {
	?>

		<form class="container" method=POST>
			<input type=hidden value="users">
			<div class=campo>
				<span>Nombre</span>
				<input type=text name="username" required>
			</div>
			<div class=campo>
				<span>Contraseña</span>
				<input type=password name="password" required>
			</div>
			<div class=campo>
				<span>Permisos</span>
				<input type=number name="perm" min=0 max=3 required>
			</div>
			<input type=submit value="Crear">
		</form>

	<?php 
			} 
		}
	?>

</div>
</body>
</html>