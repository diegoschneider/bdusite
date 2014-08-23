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
	<?php //Start tables nav ?>
	<div class="vertical nav">
		<ul>
		<?php 
			$tables = array();
			$path = $_SERVER['DOCUMENT_ROOT']."/manage";
			$dir = scandir($path);
			foreach ($dir as $value) {
				if($value[0] == ".") continue;
				if(is_dir($path."/".$value)) {
					$tables[$value] = "/manage/$value";
				}
			}

			foreach ($tables as $key => $value) {
				echo "<li><a href=$value>$key</a></li>";
			}
		?>
		</ul>
	</div>



</div>
</body>
</html>