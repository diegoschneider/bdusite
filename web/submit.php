<?php
require("./src/script/functions.php");

$form = new Form($_POST['table']);
if($form == TABLE_INEXISTENT) {
	header("location: /");
}

?>
<pre><?php var_dump($_POST); ?></pre>

<?php echo $form->submit($_POST); ?>