<?php require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php"); 
$link = db_connect();
if(!$link) { echo_error(MYSQL_CONNECTERROR); die(); } 

if(@valid_input($_POST['curso'])) {
	if(!$_SESSION['user']->loggedin || !isset($_SESSION['user'])) {
		echo "[\"0\"]";
		die();
	}
	$sql = "SELECT division FROM cursos WHERE año=?";
	$stmt = $link->prepare($sql);
	if($stmt) {
		$stmt->bind_param("i",$_POST['curso']);
		$stmt->execute();
		$result = $stmt->get_result();
		$ret = array();
		while($row = $result->fetch_row()) {
			$ret[] = $row[0];
		}
		echo json_encode($ret);
		die();
	}
} else if(@valid_input($_POST['cur']) && @valid_input($_POST['div'])) {
	
	if(!$_SESSION['user']->loggedin || !isset($_SESSION['user'])) {
		echo "[\"0\"]";
		die();
	}

	$ret = get_codcur($_POST['cur'],$_POST['div']);
	echo json_encode($ret);
	die();

} else if(isset($_POST['cur']) || isset($_POST['div'])) {
	//En caso de haberse enviado una mala petición al ir hacia atrás.
	echo "Bad Request :c";
	die();
}
?>
<html>
<head>
	<?php style_head() ?>
	<script src="consulta.js"></script>
</head>
<body>
	<?php style_header(); ?>
	<div id="content">
		<?php
		$nav["."]="Volver";
		style_manage_nav($nav); 
		?>
		<div class="container form">
			<form method=GET id="form1">
				<input type=hidden name="query" value="dni">
				<div class=campo>
					<div class=label>
						<span>DNI</span>
					</div>
					<div class=input>
						<input type=text name="dni">
					</div>
				</div>
				<input type=submit value="Consultar">
			</form>
			<form method=GET id="form2">
				<input type=hidden name="query" value="nomape">
				<div class=campo>
					<div class=label>
						<span>Nombre</span>
					</div>
					<div class=input>
						<input type=text name="nombre">
					</div>
				</div>
				<div class=campo>
					<div class=label>
						<span>Apellido</span>
					</div>
					<div class=input>
						<input type=text name="apellido">
					</div>
				</div>
				<input type=submit value="Consultar">
			</form>
			<form method=GET id="form3">
				<input type=hidden name="query" value="curso">
				<div class=campo>
					<div class=label>
						<span>Año</span>
					</div>
					<div class=input>
						<select name="curso" id="curso">
							<option value="-1">Seleccione...</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
						</select>
					</div>
				</div>
				<div class=campo>
					<div class=label>
						<span>Division</span>
					</div>
					<div class=input>
						<select name="division" id="division" disabled>
							<option value="-1">Seleccione un año</option>
						</select>
					</div>
				</div>
				<input type=submit value="Consultar">
			</form>
		</div>
		<?php if(isset($_GET['query'])) { ?>
		<h3>Lista de alumnos</h3>
		<table border="1" id="result">

			<?php

			$sql = "SELECT 
			alumnos.apellidos AS \"Apellidos\",
			alumnos.nombres AS \"Nombres\",
			tipodocumento.tipo AS \"Tipo de documento\",
			alumnos.nrodoc AS \"Documento\",
			estadodocumento.nombre AS \"Estado del documento\",
			sexo.sexo AS \"Sexo\",
			date_format(alumnos.fecnac, '%d-%m-%Y') AS \"Fecha de nacimiento\",
			nivelescolar.nivel AS \"Nivel escolar\",
			especialidades.nombre AS \"Especialidad\",
			cursos.año AS \"Año\",
			cursos.division AS \"Division\",
			turnos.nombre AS \"Turno\",
			paises.nacionalidad AS \"Nacionalidad\",
			provincia.nombre AS \"Provincia de nacimiento\",
			locnac.nombre AS \"Ciudad de nacimiento\",
			locact.nombre AS \"Ciudad actual\",
			barrios.nombre AS \"Barrio\",
			CONCAT(calles.nombre,\" \",alumnos.callenro) AS \"Domicilio\",
			alumnos.piso AS \"Piso\",
			alumnos.torre AS \"Torre\",
			alumnos.dpto AS \"Departamento\",
			alumnos.telefono AS \"Teléfono\",
			alumnos.celular AS \"Celular\",
			alumnos.email AS \"E-Mail\",
			condinscripcion.condicion AS \"Condición en la inscripción\"

			FROM alumnos 

			LEFT JOIN estadodocumento ON alumnos.estadodoc=estadodocumento.cod
			LEFT JOIN tipodocumento ON alumnos.tipodoc=tipodocumento.cod
			LEFT JOIN nivelescolar ON alumnos.nivelescolar=nivelescolar.cod
			LEFT JOIN sexo ON alumnos.sexo=sexo.cod
			LEFT JOIN cursos ON alumnos.curso=cursos.cod
			LEFT JOIN especialidades ON cursos.especialidad=especialidades.cod
			LEFT JOIN turnos ON alumnos.turno=turnos.cod
			LEFT JOIN paises ON alumnos.nacionalidad=paises.cod
			LEFT JOIN provincia ON alumnos.provnac=provincia.cod
			LEFT JOIN localidades locnac ON alumnos.lugarnac=locnac.cp
			LEFT JOIN localidades locact ON alumnos.localidad=locact.cp
			LEFT JOIN calles ON alumnos.calle=calles.cod
			LEFT JOIN barrios ON alumnos.barrio=barrios.cod
			LEFT JOIN condinscripcion ON alumnos.condinscrip=condinscripcion.cod ";

			
			if(isset($_GET['query'])) {
				switch ($_GET['query']) {
					case 'dni': {
						if(isset($_GET['dni'])) {
							$sql .= "WHERE nrodoc=?;";
							$stmt = $link->prepare($sql);
							$stmt->bind_param("i", $_GET['dni']);
							if(isset($stmt) && $stmt) {
								$stmt->execute();
							}
						}
						break;
					}
					case 'nomape': {
						$sql .= " WHERE ";

						if(valid_input($_GET['nombre']) && valid_input($_GET['apellido'])) {
							$sql .= "nombres LIKE CONCAT('%',?,'%') AND apellidos LIKE CONCAT('%',?,'%');";
							$stmt = $link->prepare($sql);
							$stmt->bind_param("ss", $_GET['nombre'], $_GET['apellido']);
						} else if(valid_input($_GET['apellido'])) {
							$sql .= "apellidos LIKE CONCAT('%',?,'%');";
							$stmt = $link->prepare($sql);
							$stmt->bind_param("s", $_GET['apellido']);
						} else if(valid_input($_GET['nombre'])) {
							$sql .= "nombres LIKE CONCAT('%',?,'%');";
							$stmt = $link->prepare($sql);
							$stmt->bind_param("s", $_GET['nombre']);
						}

						if(isset($stmt) && $stmt) {
							$stmt->execute();
						}
						break;
					}
					case 'curso':{
						$codcur = get_codcur($_GET['curso'],$_GET['division']);
						$sql .= "WHERE curso=?;";
						$stmt = $link->prepare($sql);
						$stmt->bind_param("s",$codcur);
						if(isset($stmt) && $stmt) {
							$stmt->execute();
						}
						break;
					}
				}

				if(isset($stmt) && $stmt) {
					$result = $stmt->get_result();
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
				}
			}
			?>
		</table>
		<?php } ?>
	</div>
</body>
</html>
