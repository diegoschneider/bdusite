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
		style_manage_nav(true);
		
		$sql = "SELECT
		cursos.cod AS \"Código\",
		cursos.año AS \"Año\",
		cursos.division AS \"Division\",
		turnos.nombre AS \"Turno\",
		especialidades.nombre AS \"Especialidad\"

		FROM cursos

		LEFT JOIN turnos ON cursos.turno=turnos.cod
		LEFT JOIN especialidades ON cursos.especialidad=especialidades.cod

		ORDER BY cursos.año,cursos.division";
		$result = $link->query($sql);
		?>
		<table border=1>
			<?php query_table($result); ?>
		</table>
	</div>
</body>
</html>