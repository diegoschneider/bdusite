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
	<?php //Start tables nav ?>
	<div class=horizontalnav>
		<ul>
		<?php 
			$tables = array();
			$tables[] = "users";
			$tables[] = "alumnos";

			foreach ($tables as $value) {
				echo "<li><a href=/manage/$value.php>$value</a></li>";
			}
		?>
		</ul>
	</div>



</div>
</body>
</html>