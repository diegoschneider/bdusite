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
	<h2>Barrios</h2>
	
	<?php
	if(isset($_POST['tabla'])) {
		if(isset($_POST['nombre'])) {
			$query = $link->prepare("INSERT INTO barrios(nombre) values(?)");
			$query->bind_param("s",$_POST['nombre']);
			
			if($query->execute()) {
				echo "<span>Barrio agregado</span>";
			} else {
				echo "<span>Error al cargar</span>";
			}
			$query->close();
		}
	} 
	?>
	
	<form class=container method=POST>
		<input type=hidden name=tabla value=barrios>
		<div class=campo>
			<span>Nombre del barrio</span>
			<input type=text name=nombre>
		</div>
    	<input type=submit value="Enviar">
	</form>



	<table border=1>
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>Del</th>
		</tr>

		<?php
			$sql = "SELECT * FROM barrios";
			$result = $link->query($sql);

			while($row = $result->fetch_array()) {
				echo "<tr>
					<td>{$row['cod']}</td>
					<td>{$row['nombre']}</td>
					<td>
				</tr>";
			}

		?>


	</table>

</div>
</body>
</html>