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
		$sql = "SELECT
		cursos.cod AS \"Código\",
		cursos.año AS \"Año\",
		cursos.division AS \"Division\",
		turnos.nombre AS \"Turno\",
		especialidades.nombre AS \"Especialidad\"

		FROM cursos

		LEFT JOIN turnos ON cursos.turno=turnos.cod
		LEFT JOIN especialidades ON cursos.especialidad=especialidades.cod";
		$result = $link->query($sql);
		echo $link->error;
		?>
		<table border=1>
			<?php
			$ret = "";
			while($row = $result->fetch_row()) {
				$ret .= "<tr>";
				foreach ($row as $key => $value) {
					$ret .= "<td>$value</td>";
				}
				$ret .= "</tr>";

			}
			$temp = "<tr>";
			$fields = $result->fetch_fields();
			foreach ($fields as $key => $value) {
				$temp .= "<th>{$value->name}</th>";
			}
			$temp .= "</tr>";
			$ret = $temp.$ret;
			echo $ret;
			?>
		</table>
	</div>
</body>
</html>