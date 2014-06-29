<?php
require("./src/script/functions.php");
?>

<html>
<head>
	<?php style_head(); ?>
</head>
<body>
<?php style_header(); ?>
<div id="content">
	<?php //Start tables nav ?>
	<div class=horizontalnav>
		<ul>
		<?php 
			foreach ($tables as $value) {
				echo "<li><a href=/manage.php?table=$value>$value</a></li>";
				
			}
		?>
		</ul>
	</div>

	<?php

		//Start Action Nav

		if(isset($_GET['table']) && in_array($_GET['table'], $tables)) {
			$ret = 
			"<div class=horizontalnav>
				<ul>
					<li>
						<a href=/manage.php?table=".$_GET['table']."&action=cargar>Cargar</a>
					</li>
					<li>
						<a href=/manage.php?table=".$_GET['table']."&action=consultar>Consultar</a>
					</li>
				</ul>
			</div>";
			echo $ret;
		}

		//Selected table and action display
		$ret = "<h3>Seleccionado: ";
		if(isset($_GET['table']) && in_array($_GET['table'], $tables)) {
			$ret .= $_GET['table'];

			if(isset($_GET['action']) && in_array($_GET['action'], array("cargar", "consultar"))) {
				$ret .= " para {$_GET['action']} datos";
			}
		}
		echo $ret."</h3>";

		//Start Form
		if(isset($_GET['table']) && in_array($_GET['table'], $tables)) {
			$form = new Form($_GET['table']);
			if(isset($_GET['action'])) {
				if($_GET['action'] == "cargar") {
					$form->print_form();
				} else if($_GET['action'] == "consultar") {
					$form->print_query();
				}
			}
		}
	?>

</div>
</body>
</html>