<?php require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php"); 
$link = db_connect();
if(!$link) { echo_error(MYSQL_CONNECTERROR); die(); } ?>
<html>
<head>
	<?php style_head() ?>
</head>
<body>
	<?php style_header(); ?>
	<div id="content">
		<div class="container form">
			<form method=GET id="form1">
				<input type=hidden value="2" name="action">
				<input type=hidden name="query" value="dni">
				<div class=campo>
					<span>DNI</span>
					<input type=text name="dni">
				</div>
				<input type=submit value="Consultar">
			</form>
			<form method=GET id="form2">
				<input type=hidden value="2" name="action">
				<input type=hidden name="query" value="nomape">
				<div class=campo>
					<span>Nombre</span>
					<input type=text name="nombre">
				</div>
				<div class=campo>
					<span>Apellido</span>
					<input type=text name="apellido">
				</div>
				<input type=submit value="Consultar">
			</form>
			<form method=GET id="form3">
				<input type=hidden value="2" name="action">
				<input type=hidden name="query" value="curso">
				<div class=campo>
					<span>Curso</span>
					<input type=text name="curso">
				</div>
				<div class=campo>
					<span>Division</span>
					<input type=text name="division">
				</div>
				<input type=submit value="Consultar">
			</form>

			<a href="?action=2&queryall="><input type=button value="Ver todo"></a>
		</div>
		<?php if(isset($_GET['queryall']) ||isset($_GET['query'])) { ?>
		<h3>Lista de alumnos</h3>
		<table border="1" id="result">

			<?php

			if(isset($_GET['queryall'])) {
				$sql = "SELECT 
				alumnos.apellidos AS \"Apellidos\",
				alumnos.nombres AS \"Nombres\",
				tipodocumento.tipo AS \"Tipo de documento\",
				alumnos.nrodoc AS \"Documento\",
				estadodocumento.nombre AS \"Estado del documento\",
				sexo.sexo AS \"Sexo\",
				alumnos.fecnac AS \"Fecha de nacimiento\",
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
				LEFT JOIN condinscripcion ON alumnos.condinscrip=condinscripcion.cod;";
				//$sql = "SELECT * FROM alumnos ORDER BY curso,nrodoc";
				$result = $link->query($sql);

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
			} else {
				if(isset($_GET['query'])) {
					switch ($_GET['query']) {
						case 'dni': {
							if(isset($_GET['dni'])) {
								$sql = "SELECT * FROM alumnos WHERE nrodoc=?";
								$stmt = $link->prepare($sql);
								if(!$stmt) {
									echo $link->error;
								}
								$stmt->bind_param("i", $_GET['dni']);
								$stmt->execute();
							}
							break;
						}
						case 'nomape': {
							$sql = "SELECT * FROM alumnos WHERE ";

							if(validInput($_GET['nombre']) && validInput($_GET['apellido'])) {
								$sql .= "nombres LIKE CONCAT('%',?,'%') AND apellidos LIKE CONCAT('%',?,'%')";
								$stmt = $link->prepare($sql);
								$stmt->bind_param("ss", $_GET['nombre'], $_GET['apellido']);
							} else if(validInput($_GET['apellido'])) {
								$sql .= "apellidos LIKE CONCAT('%',?,'%')";
								$stmt = $link->prepare($sql);
								$stmt->bind_param("s", $_GET['apellido']);
							} else if(validInput($_GET['nombre'])) {
								$sql .= "nombres LIKE CONCAT('%',?,'%')";
								$stmt = $link->prepare($sql);
								$stmt->bind_param("s", $_GET['nombre']);
							}

							if(isset($stmt) && $stmt) {
								$stmt->execute();
							}

						}
						default:

						break;
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
			}
			?>
		</table>
		<?php } ?>
	</div>
</body>
</html>
