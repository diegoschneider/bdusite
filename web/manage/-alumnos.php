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
	$nav[1]="Agregar alumnos";
	$nav[2]="Consultar alumnos";
	style_manage_nav($nav);

	if(isset($_POST['tabla'])) {

		$link = db_connect();
		if(!$link) { echo_error(MYSQL_CONNECTERROR); }
		echo "<span>Work in progress</span>";

	}
	
	if(isset($_GET['action'])) {
		if($_GET['action'] == 1) {
	?>

	<form class=form method=POST>
		<input type=hidden name="tabla" value="alumnos">
		<h3>Nivel</h3>
		<div class=campo>
			<span>Nivel Escolar</span>
			<input required type=text name="nivelescolar">
		</div>
		<div class=campo>
			<span>Curso</span>	
			<input required type=text name="curso">
		</div>
	    <div class=campo>
    		<span>Turno</span>
    		<input required type=text name="turno"> 
		</div>
		<h3>Datos Personales:</h3>
		<div class=campo>
			<span>Tipo de documento</span>
			<input required type=text name="tipodoc">
		</div>
		<div class=campo>
			<span>N° de Documento</span>
			<input required type=text name="nrodoc">
		</div>			
		<div class=campo> 
			<span>Estado de Documento</span>
			<input required type=text name="estadodoc">
		</div>
		<div class=campo>
			<span>Apellidos</span>
			<input required type=text name="apellidos">
		</div>
		<div class=campo>
			<span>Nombres</span>
			<input required type=text name="nombres">
		</div>
		<div class=campo>
			<span>Sexo</span>
			<input required type=text name="sexo">
		</div>
		<div class=campo>
			<span>Fecha De Nacimiento</span>
			<input required type=text name="fecnac">
		</div>
		<div class=campo>
			<span>Nacionalidad</span>
			<input required type=text name="nacionalidad">
		</div>
		<div class=campo>
			<span>Lugar de Nacimiento</span>
			<input required type=text name="lugarnac">
		</div>
		<div class=campo>
			<span>Provincia de Nacimiento</span>
			<input required type=text name="provnac">
		</div>
		<div class=campo>
			<span>Cuil del alumno</span>
			<input required type=text name="cuil">
		</div>
		<div class=campo>
			<span>email del alumno</span>
			<input required type=text name="email">
		</div>
		<h3>Domicilio:</h3>
		<div class=campo>
			<span>Calle</span>
			<input required type=text name="calle">
		</div>
		<div class=campo>
			<span>Numero</span>
			<input required type=text name="callenro">
		</div>
		<div class=campo>
			<span>Piso</span>
			<input required type=text name="piso">
		</div>
		<div class=campo>
			<span>Dpto</span>
			<input required type=text name="dpto">
		</div>
 		<div class=campo>
			<span>Barrio</span>
			<input required type=text name="barrio">
		</div>
		<div class=campo>
			<span>Localidad</span>
			<input required type=text name="localidad">
		</div>
		<div class=campo>
			<span>Codigo Postal</span>
			<input required type=text name="cp">
		</div>
		<div class=campo>
			<span>Telefono</span>
			<input required type=text name="telefono">
		</div>
		<div class=campo>
			<span>Celular</span>
			<input required type=text name="celular">
		</div>
		<div class=campo>
			<span>N° de Legajo</span>
			<input required type=text name="nrolegajo">
		</div>
		<div class=campo>
			<span>N° de Libro Matriz</span>
			<input required type=text name="nrolibmat">
		</div>	
		<div class=campo>
			<span>N° de Folio</span>
			<input required type=text name="nrofolio">
		</div>
		<h3>Servicio Educativo de Procedencia:</h3>
		<div class=campo>
			<span>Escuela de Procedencia</span>
			<input required type=text name="escpro">
		</div>
		<div class=campo>
			<span>Condicion del Alumno</span>
			<input required type=text name="condinscrip">
		</div>
		<h3>Otros datos:</h3>
		<div class=campo>
			<span>¿Cuantos Hermanos Tiene?</span>
			<input required type=text name="hermanos">
		</div>
		<div class=campo>
			<span>¿Cuantos en este Establecimiento?</span>
			<input required type=text name="hermest">
		</div>
		<div class=campo>
			<span>Distancia del Domicilio a la Escuela</span>
			<input required type=text name="kmhogar">
		</div>
 		<div class=campo>
			<span>Cantidad de habitantes en el hogar</span>
			<input required type=text name="habitantes">
		</div>
 		<div class=campo>
			<span>Cantidad de habitaciones en el hogar(exceptuando cocina y baño)</span>
			<input required type=text name="habitaciones">
		</div>
		<div class=campo>
			<span>Cantidad de libros en el hogar</span>
			<input required type=text name="librohogar">
		</div>

		<h3>Familiares/tutores</h3>
		<div class=campo>
			<span>Nombre del padre del alumno</span>
			<input required type=text name="padre">
		</div>
		<div class=campo>
			<span>Nombre de la madre del alumno</span>
			<input required type=text name="madre">
		</div>
		<div class=campo>
			<span>Nombre del tutor del alumno</span>
			<input required type=text name="tutor">
		</div>
		<div class=campo>
			<span>Persona autorizada a retirar al alunmo</span>
			<input required type=text name="retira1">
		</div>
		<div class=campo>
			<span>Otra persona autorizada a retirar al alunmo</span>
			<input required type=text name="retira2">
		</div>
		<div class=campo>
			<span>Firma del padre, madre o tutor</span>
			<input required type=text name="firma">
		</div>
 		<div class=campo>
			<span>Foto del alumno</span>
			<input required type=text name="foto">
		</div>

    	<input type=submit value="Enviar">
	</form>

	<?php
		}
	
		if($_GET['action']==2) {
	?>
		<h3>Work in progress :c</h3>

	<?php
		}
	}
	?>
</div>
</body>
</html>