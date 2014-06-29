<?php
define("USER_ALREADYLOGGEDIN", 1000);
define("USER_NOTLOGGEDIN",1001);
define("USER_INEXISTENT",1002);
define("USER_WRONGPASS",1003);

define("INVALID_REQUEST", 2000);
define("MYSQL_CONNECTERROR", 2001);

define("TABLE_INEXISTENT", 3000);
define("DATA_INVALID", 3001);
// $errordefs[errno] = "errstr";
$errordefs = array();

$errordefs[USER_ALREADYLOGGEDIN] = "Ya has iniciado sesión";
$errordefs[USER_NOTLOGGEDIN] = "No has iniciado sesión";
$errordefs[USER_INEXISTENT] = "Usuario inexistente";
$errordefs[USER_WRONGPASS] = "Contraseña incorrecta";

$errordefs[INVALID_REQUEST] = "Petición inválida";
$errordefs[MYSQL_CONNECTERROR] = "Error al conectar a la base de datos";

$errordefs[TABLE_INEXISTENT] = "Tabla inexistente";
$errordefs[DATA_INVALID] = "Los datos son erróneos";

if(isset($_POST['errors'])) {
    $errors = $_POST['errors'];
}

function print_errors() {
    set_error_handler('custom_error_print');
    error_reporting(E_ALL | E_STRICT);
}

function custom_error_print($errno, $errstr, $errfile, $errline) {
    echo "<br>PHP - Error $errno: \"$errstr\"";
    echo " en el archivo $errfile - linea $errline<br>";
    return 0;
}

/**
 * Error handler - Log
 */
function custom_error($errno, $errstr, $errfile, $errline) {
    $link = db_connect("BDU");
    if(!$link) { return 0; }
        
    $query = "INSERT INTO errorlog(errno, errstr, errfile, errline) VALUES($errno,'$errstr','$errfile',$errline)";
    $link->query($query);
    
    $link->close();
    
}

//set_error_handler('custom_error');

?>