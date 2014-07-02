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
			$dir = scandir($_SERVER['DOCUMENT_ROOT']."/manage");
			foreach ($dir as $value) {
				if($value[0] == ".") continue;
				if($value == "index.php") continue;
				if($value[0] == "-") {
					$name = substr($value, 1, -4);
				} else {
					$name = substr($value, 0, -4);
				}
				$tables[$name] = "/manage/$value";
			}

			foreach ($tables as $key => $value) {
				echo "<li><a ";
				if($value[8] == "-") {
					echo "class=unfinished ";
				}
				echo "href=$value>$key</a></li>";
			}
		?>
		</ul>
	</div>



</div>
</body>
</html>