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

		$nav = array();
		$nav[1] = "Crear curso";
		$nav[2] = "Consultar curso";
		style_manage_nav($nav);

		if(isset($_POST['tabla'])) {
			foreach ($_POST as $key => $value) {
				if($_POST[$key] == -1 || $_POST[$key] == "") {
					$_POST[$key] = null;
				}
			}

			echo "<pre>";
			var_dump($_POST);
			echo "</pre>";
			$codcur = "0".$_POST['esp']."0".$_POST['año'];
			if($_POST['division'] < 10) {
				$codcur .= "0".$_POST['division'];
			} else {
				$codcur .= $_POST['division'];
			}

			$campos = array();
			$campos['cod'] = Array('tipo' => 's', 'valor' => $codcur);
			$campos['año'] = Array('tipo' => 'i', 'valor' => $_POST['año']);
			$campos['division'] = Array('tipo' => 'i', 'valor' => $_POST['division']);
			$campos['turno'] = Array('tipo' => 'i', 'valor' => $_POST['turno']);
			$campos['especialidad'] = Array('tipo' => 'i', 'valor' => $_POST['esp']);
			$campos['preceptora'] = Array('tipo' => 'i', 'valor' => $_POST['dniprec']);

			insert($link, 'cursos', $campos);

		}

		?>

		<?php

		if(isset($_GET['action'])) {
			if($_GET['action'] == 1) {

				$options['turnos'] = form_select($link, "SELECT cod,nombre FROM turnos");
				$options['especialidades'] = form_select($link, "SELECT cod,nombre FROM especialidades");
				?>
				<form class="form" method=POST>
					<input type=hidden name=tabla value=cursos>
					<div class=campo>
						<span>Año</span>
						<input type=number min=1 max=7 required name="año">
					</div>
					<div class=campo>
						<span>Division</span>
						<input type=number min=1 max=15 name="division" required>
					</div>
					<div class=campo>
						<span>Preceptora a cargo</span>
						<input type=text name="dniprec">
					</div>
					<div class=campo>
						<span>Turno</span>
						<select name="turno" required>
							<?php echo $options['turnos']; ?>
						</select>
					</div>
					<div class=campo>
						<span>Especialidad</span>
						<select name="esp" required>
							<?php echo $options['especialidades']; ?>
						</select>
					</div>

					<input type=submit value="Enviar">
				</form>
				<?php
			}
		}
		?>
	</div>
</body>
</html>