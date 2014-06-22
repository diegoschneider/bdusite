<?php
define("INVALID_REQUEST", 5000);
define("MYSQL_CONNECTERROR", 5001);
define("USER_ALREADYLOGGEDIN", 1000);
define("USER_NOTLOGGEDIN",1001);
define("USER_INEXISTENT",1002);
define("USER_EXISTENT",1003);
define("USER_WRONGPASS",1004);
    
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

set_error_handler('custom_error');



?>