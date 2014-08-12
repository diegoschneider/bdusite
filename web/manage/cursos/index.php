<?php require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php"); 


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
		$nav[".."]="Volver";
		$nav["agregar.php"]="Agregar curso";
		$nav["consultar.php"]="Consultar cursos";
		style_manage_nav($nav);

		?>
	</div>
</body>
</html>