<?php
require("./src/script/functions.php");
?>

<html>
<head>
	<?php style_head(); ?>
</head>
<body>
<div id="content">

	<?php echo $_SESSION['user']->name ?>

</div>
</body>
</html>