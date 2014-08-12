<?php

$link = new mysqli("localhost");
$link->select_db("BDU");

$link->query("SELECT * from alumn");
echo $link->error;
echo "<br>";
$link->query("SELECT * FROM alumnos WHERE nrodoc=39414147");
echo $link->error;
die();

/*$file = fopen("./calles.txt","r");

if($file) {
	while(($line = fgets($file)) !== false) {
		$sql = "INSERT INTO calles(nombre) VALUES(\"".$line."\")";
		$link->query($sql);
		echo "Insertado: ".$sql."<br>";
	}
}*/
?>