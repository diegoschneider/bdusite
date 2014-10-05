<?php require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php"); ?>

<html>
<head>
	<?php style_head(); ?>
</head>
<body>
	<?php style_header(); ?>
	<div id="content">
		<h3>Ayuda</h3>
		<ul>
			<li>No se pueden editar los datos cargados (Aún)</li>
		</ul>
		<h3>Contacto</h3>
		<p>Ante cualquier duda, envíe un mail a <a href="mailto:bdu@tecnica1campana.edu.ar">bdu@tecnica1campana.edu.ar</a></p>
		<?php
			if(@valid_input($_POST['subject']) && @valid_input($_POST['message'])) {
				$query = new InsertQuery("a_contacto");
				$query->addfield("userid","i",$_SESSION['user']->id);
				$query->addfield("subject","s",$_POST['subject']);
				$query->addfield("message","s",$_POST['message']);
				$query->addfield("solved","i",0);
				$query->execute();

				if($query->result === true) {
					echo "<b>Enviado correctamente</b>";
				} else {
					echo "Error: ".$query->result();
				}
			}
		?>
		<form class=form method=POST>
			<div class=campo>
				<div class=label>
					<span>Asunto:</span>
				</div>
				<div class=input>
					<input type=text name=subject size=60 maxlength=60>
				</div>
			</div>
			<div class=campo>
				<div class=input>
					<textarea name=message rows=10 style="width: 700px; max-width=700px;"></textarea>
				</div>
			</div>
			<input type=submit value="Enviar">
		</form>
	</div>
</body>
</html>