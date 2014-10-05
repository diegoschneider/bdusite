<?php
require_once($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php"); 
?>

<html>
<head>
	<?php style_head(); ?>
</head>
<body>
	<?php style_header(); ?>
	<div id="content">
		<h1>Panel de administrador</h1>
		<?php
		echo "<a href=msg>";
		$mensajes = get_contact_messages_number();
		if($mensajes == 1) {
			echo "Hay 1 mensaje nuevo";
		} else {
			echo "Hay ".$mensajes." mensajes nuevos";
		}
		echo "</a>";
		?>
	</div>
</body>
</html>