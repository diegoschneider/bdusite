<?php
require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php");
$link = db_connect();
if(!$link) { echo_error(MYSQL_CONNECTERROR); die(); }
?>

<html>
<head>
	<?php style_head(); ?>
</head>
<body>
	<?php style_header(); ?>
	<div id="content">

		<?php

		$nav[".."]="Volver";
		style_manage_nav($nav);

		if(isset($_POST['tabla'])) {
			foreach ($_POST as $key => $value) {
				if($_POST[$key] == -1 || $_POST[$key] == "") {
					$_POST[$key] = null;
				}
			}
		}
		?>

		<form class=container method=POST>
			<input type=hidden name="tabla" value="Materias">
			<div class=campo>
				<span>Nombre de la Materia</span>
				<input type=text name="nombre">
			</div>
			<input type=submit value="Enviar">
		</form>
	</div>
</body>
</html>