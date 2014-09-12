<?php require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php"); 
$link = db_connect();
if(!$link) { echo_error(MYSQL_CONNECTERROR); die(); } ?>
<html>
<head>
	<?php style_head(); ?>
	<script src=check.js></script>
</head>
<body>
	<?php style_header(); ?>
	<div id="content">

		<?php
		style_manage_nav(true);
		
		if(isset($_POST['tabla'])) {
			foreach ($_POST as $key => $value) {
				if($_POST[$key] == -1 || $_POST[$key] == "") {
					$_POST[$key] = null;
				}
			}

			$result = $link->query("SELECT nrodoc from alumnos WHERE nrodoc={$_POST['nrodoc']}");
			if(!$result->num_rows) {

				$sql = "INSERT INTO alumnos(nivelescolar, curso, turno, tipodoc, nrodoc, estadodoc, apellidos, nombres, sexo, fecnac, nacionalidad, lugarnac, provnac, cuil, email, calle, callenro, torre, piso, dpto, barrio, localidad, cp, telefono, celular, nrolegajo, nrolibmat, nrofolio, escproc, condinscrip, hermanos, hermest, kmhogar, habitantes, habitaciones, librohogar,retira1, retira2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				$campos = array();
				$campos['nivelescolar'] = campo("i", $_POST['nivelescolar']);
				$campos['curso'] = campo('s', $_POST['curso']);
				$campos['turno'] = campo('i', $_POST['turno']);
				$campos['tipodoc'] = campo('i', $_POST['tipodoc']);
				$campos['nrodoc'] = campo('i', $_POST['nrodoc']);
				$campos['estadodoc'] = campo('i', $_POST['estadodoc']);
				$campos['apellidos'] = campo('s', $_POST['apellidos']);
				$campos['nombres'] = campo('s',$_POST['nombres']);
				$campos['sexo'] = campo('i', $_POST['sexo']);
				$campos['fecnac'] = campo('s', $_POST['fecnac']);
				$campos['nacionalidad'] = campo('i', $_POST['nacionalidad']);
				$campos['lugarnac'] = campo('i', $_POST['lugarnac']);
				$campos['provnac'] = campo('i',$_POST['provnac']);
				$campos['cuil'] = campo('s', $_POST['cuil']);
				$campos['email'] = campo('s',$_POST['email']);
				$campos['calle'] = campo('i',$_POST['calle']);
				$campos['callenro'] = campo('i',$_POST['callenro']);
				$campos['torre'] = campo('s',$_POST['torre']);
				$campos['piso'] = campo('i',$_POST['piso']);
				$campos['dpto'] = campo('s',$_POST['dpto']);
				$campos['barrio'] = campo('i',$_POST['barrio']);
				$campos['localidad'] = campo('i', $_POST['localidad']);
				$campos['cp'] = campo('s',$_POST['cp']);
				$campos['telefono'] = campo('s',$_POST['telefono']);
				$campos['celular'] = campo('s',$_POST['celular']);
				$campos['nrolegajo'] = campo('i',$_POST['nrolegajo']);
				$campos['nrolibmat'] = campo('i',$_POST['nrolibmat']);
				$campos['nrofolio'] = campo('i',$_POST['nrofolio']);
				$campos['escproc'] = campo('i',$_POST['escproc']);
				$campos['condinscrip'] = campo('i',$_POST['condinscrip']);
				$campos['hermanos'] = campo('i',$_POST['hermest']);
				$campos['kmhogar'] = campo('i',$_POST['kmhogar']);
				$campos['habitantes'] = campo('i',$_POST['habitantes']);
				$campos['habitaciones'] = campo('i',$_POST['habitaciones']);
				$campos['librohogar'] = campo('i',$_POST['librohogar']);
				$campos['retira1'] = campo('i',$_POST['retira1']);
				$campos['retira2'] = campo('i',$_POST['retira2']);

				insert($link, 'alumnos', $campos);
				/*$stmt = $link->prepare($sql);
				if(!$stmt) {
					
				} else {
					$stmt->bind_param('isiiiissisiiissiisisiisssiiiiiiiiiiiii',$_POST['nivelescolar'],$_POST['curso'],$_POST['turno'],$_POST['tipodoc'],$_POST['nrodoc'],$_POST['estadodoc'],$_POST['apellidos'],$_POST['nombres'],$_POST['sexo'],$_POST['fecnac'],$_POST['nacionalidad'],$_POST['lugarnac'],$_POST['provnac'],$_POST['cuil'],$_POST['email'],$_POST['calle'],$_POST['callenro'],$_POST['torre'],$_POST['piso'],$_POST['dpto'],$_POST['barrio'],$_POST['localidad'],$_POST['cp'],$_POST['telefono'],$_POST['celular'],$_POST['nrolegajo'],$_POST['nrolibmat'],$_POST['nrofolio'],$_POST['escproc'],$_POST['condinscrip'],$_POST['hermanos'],$_POST['hermest'],$_POST['kmhogar'],$_POST['habitantes'],$_POST['habitaciones'],$_POST['librohogar'],$_POST['retira1'],$_POST['retira2']);


					$stmt->execute();
					echo $stmt->error;
					if(!$stmt->affected_rows) {
						echo "Error al cargar los datos";
					} else {
						if(sizeof($_FILES["foto"]["name"]) > 1) {
							if(!$_FILES["foto"]["error"]) {
								$temp = explode(".", $_FILES["foto"]["name"]);
								$extension = end($temp);
								$path = $_SERVER['DOCUMENT_ROOT']."/fotos/".$_POST['nrodoc'].".".$extension;
								echo "Save!<br>Stored in: " . $path;
								move_uploaded_file($_FILES['foto']['tmp_name'], $path);
							}
						} 
					}
				}
				//move_uploaded_file($_FILES['firma']['tmp_name'], "firma/".)
				*/
			} else {
				echo "Alumno existente";
			}

		} ?>

		<form class=form id="form" method=POST enctype="multipart/form-data">
			<input type=hidden name="tabla" value="alumnos">
			<?php
			$options[] = array();
			$options['barrios'] = form_select($link, "SELECT cod,nombre FROM barrios ORDER BY nombre",48);
			$options['nivelescolar'] = form_select($link, "SELECT cod,nivel FROM nivelescolar", 2);
			$options['cursos'] = form_select($link, "SELECT cod,concat(año,' ',division) FROM cursos ORDER BY año,division");
			$options['turnos'] = form_select($link, "SELECT cod,nombre FROM turnos");
			$options['tipodocumento'] = form_select($link, "SELECT cod,tipo FROM tipodocumento",1);
			$options['estadodocumento'] = form_select($link, "SELECT cod,nombre FROM estadodocumento");
			$options['sexo'] = form_select($link, "SELECT cod,sexo FROM sexo");
			$options['localidades'] = form_select($link, "SELECT cp,nombre FROM localidades",2804);
			$options['provincia'] = form_select($link, "SELECT cod,nombre FROM provincia ORDER BY nombre",1);
			$options['paises'] = form_select($link, "SELECT cod,nombre FROM paises",54);
			$options['calles'] = form_select($link, "SELECT cod,nombre FROM calles");
			$options['escuelas'] = form_select($link, "SELECT cod,nombre FROM escuelas");
			$options['condinscripcion'] = form_select($link, "SELECT cod,condicion FROM condinscripcion");

			?>
			<h3>Nivel</h3>
			<div class=campo>
				<div class=label>
					<span>Nivel Escolar</span>
				</div>
				<div class=input>
					<select name="nivelescolar" required>
						<?php echo $options['nivelescolar']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Curso</span>	
				</div>
				<div class=input>
					<select name="curso">
						<?php echo $options['cursos']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Turno</span> 
				</div>
				<div class=input>
					<select name="turno" required>
						<?php echo $options['turnos']; ?>
					</select>
				</div>
			</div>
			<h3>Datos Personales:</h3>
			<div class=campo>
				<div class=label>
					<span>Tipo de documento</span>
				</div>
				<div class=input>
					<select name="tipodoc" required>
						<?php echo $options['tipodocumento']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>N° de Documento</span>
				</div>
				<div class=input>
					<input required type=text name="nrodoc">
				</div>
			</div>			
			<div class=campo>
				<div class=label> 
					<span>Estado de Documento</span>
				</div>
				<div class=input>
					<select name="estadodoc" required>
						<?php echo $options['estadodocumento']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Apellidos</span>
				</div>
				<div class=input>
					<input required type=text name="apellidos">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Nombres</span>
				</div>
				<div class=input>
					<input required type=text name="nombres">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Sexo</span>
				</div>
				<div class=input>
					<select name="sexo" required>
						<?php echo $options['sexo']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Fecha De Nacimiento</span>
				</div>
				<div class=input>
					<input required type=date name="fecnac">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Nacionalidad</span>
				</div>
				<div class=input>
					<select name="nacionalidad" required>
						<?php echo $options['paises']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Provincia de Nacimiento</span>
				</div>
				<div class=input>
					<select name="provnac" required>
						<?php echo $options['provincia']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Lugar de Nacimiento</span>
				</div>
				<div class=input>
					<select name="lugarnac">
						<?php echo $options['localidades']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Cuil del alumno</span>
				</div>
				<div class=input>
					<input type=text id="cuil1" size=2 maxlength=2>
					<span id="cuil">--</span>
					<input type=text id="cuil2" size=1 maxlength=1>
					<input type=hidden name="cuil">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>E-Mail del alumno</span>
				</div>
				<div class=input>
					<input type=email name="email">
				</div>
			</div>
			<h3>Domicilio:</h3>
			<div class=campo>
				<div class=label>
					<span>Localidad</span>
				</div>
				<div class=input>
					<select name="localidad" required>
						<?php echo $options['localidades']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Barrio</span>
				</div>
				<div class=input>
					<select name="barrio" required>
						<?php echo $options['barrios']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Calle</span>
				</div>
				<div class=input>
					<select name="calle" required>
						<?php echo $options['calles']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Numero</span>
				</div>
				<div class=input>
					<input required type=text name="callenro">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Torre</span>
				</div>
				<div class=input>
					<input type=text name="torre">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Piso</span>
				</div>
				<div class=input>
					<input type=text name="piso">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Dpto</span>
				</div>
				<div class=input>
					<input type=text name="dpto">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Codigo Postal</span>
				</div>
				<div class=input>
					<input required type=text name="cp">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Telefono fijo</span>
				</div>
				<div class=input>
					<input type=text name="telefono">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Celular</span>
				</div>
				<div class=input>
					<input type=text name="celular">
				</div>
			</div>
			<h3>------</h3>
			<div class=campo>
				<div class=label>
					<span>N° de Legajo</span>
				</div>
				<div class=input>
					<input type=text name="nrolegajo">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>N° de Libro Matriz</span>
				</div>
				<div class=input>
					<input type=text name="nrolibmat">
				</div>
			</div>	
			<div class=campo>
				<div class=label>
					<span>N° de Folio</span>
				</div>
				<div class=input>
					<input type=text name="nrofolio">
				</div>
			</div>
			<h3>Servicio Educativo de Procedencia:</h3>
			<div class=campo>
				<div class=label>
					<span>Escuela de Procedencia</span>
				</div>
				<div class=input>
					<select name="escproc">
						<?php echo $options['escuelas']; ?>
					</select>
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Condicion del Alumno</span>
				</div>
				<div class=input>
					<select name="condinscrip" required>
						<?php echo $options['condinscripcion']; ?>
					</select>
				</div>
			</div>
			<h3>Otros datos:</h3>
			<div class=campo>
				<div class=label>
					<span>¿Cuantos Hermanos Tiene?</span>
				</div>
				<div class=input>
					<input type=text name="hermanos">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>¿Cuantos en este Establecimiento?</span>
				</div>
				<div class=input>
					<input type=text name="hermest">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Distancia del Domicilio a la Escuela</span>
				</div>
				<div class=input>
					<input type=text name="kmhogar">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Cantidad de habitantes en el hogar</span>
				</div>
				<div class=input>
					<input type=text name="habitantes">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Cantidad de habitaciones en el hogar(exceptuando cocina y baño)</span>
				</div>
				<div class=input>
					<input type=text name="habitaciones">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Cantidad de libros en el hogar</span>
				</div>
				<div class=input>
					<input type=text name="librohogar">
				</div>
			</div>

			<h3>Familiares/tutores</h3>
			<div class=campo>
			</div>
			<div class=input>
				<div class=label>
					<span>Nombre del padre del alumno</span>
					<input type=text name="padre">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Nombre de la madre del alumno</span>
					<input type=text name="madre">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Nombre del tutor del alumno</span>
					<input type=text name="tutor">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Persona autorizada a retirar al alunmo</span>
					<input type=text name="retira1">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Otra persona autorizada a retirar al alunmo</span>
					<input type=text name="retira2">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Firma del padre, madre o tutor</span>
					<input type="file" name="firma">
				</div>
			</div>
			<div class=campo>
				<div class=label>
					<span>Foto del alumno</span>
					<input type="file" name="foto">
				</div>

				<input type=submit value="Enviar">
			</form>

		</div>
	</body>
	</html>