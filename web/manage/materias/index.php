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

			$nombre = $_POST['nombre']." ".$_POST['año']."º Año ";
			$stmt = $link->prepare("SELECT nombre FROM especialidades WHERE cod=?");
			if($stmt) {
				$stmt->bind_param("i",$_POST['especialidad']);
				$stmt->execute();

				$result = $stmt->get_result();
				$row = $result->fetch_row();
				$nombre .= $row[0];
			} else {
				echo "Error";
				die();
			}

			if(valid_input($_POST['cod']) && valid_input($_POST['año']) && valid_input($_POST['especialidad'])) {

				$codmat = $_POST['cod']."0".$_POST['año']."0".$_POST['especialidad'];

				$campos = array();
				$campos['cod'] = Array('tipo' => 's', 'valor' => $codmat);
				$campos['nombre'] = Array('tipo' => 's', 'valor' => $nombre);
				$campos['año'] = Array('tipo' => 'i', 'valor' => $_POST['año']);
				$campos['especialidad'] = Array('tipo' => 'i', 'valor' => $_POST['especialidad']);

				insert($link, 'materias', $campos);

			} else {
				echo "Datos inválidos";
			}

		}

		$options['especialidades'] = form_select($link, "SELECT cod,nombre FROM especialidades");
		?>

		<form class=container method=POST>
			<input type=hidden name="tabla" value="Materias">
			<div class=campo>
				<span>Nombre de la Materia</span>
				<input type=text name="nombre">
			</div>
			<div class=campo>
				<span>Código de la materia</span>
				<input type=text name="cod">
			</div>
			<div class=campo>
				<span>Año</span>
				<select name="año">
					<option value=1>Primero</option>
					<option value=2>Segundo</option>
					<option value=3>Tercero</option>
					<option value=4>Cuarto</option>
					<option value=5>Quinto</option>
					<option value=6>Sexto</option>
					<option value=7>Séptimo</option>
				</select>
			</div>
			<div class=campo>
				<span>Especialidad</span>
				<select name="especialidad">
					<?php echo $options['especialidades']; ?>
				</select>
			</div>
			<input type=submit value="Enviar">
		</form>
		<br>
		<?php
		$sql = "SELECT
		materias.cod AS \"CodMat\",
		materias.nombre AS \"Nombre\",
		materias.año AS \"Año\",
		especialidades.nombre AS \"Especialidad\"

		FROM materias
		LEFT JOIN especialidades ON materias.especialidad=especialidades.cod;";
		$result = $link->query($sql);
		?>
		<table border=1>
			<?php query_table($result); ?>
		</table>
	</div>
</body>
</html>