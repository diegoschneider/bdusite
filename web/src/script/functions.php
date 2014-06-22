<?php
 /***********************************
 * Funciones básicas del sistema :3 *
 ***********************************/

session_start();
require($_SERVER['DOCUMENT_ROOT']."/src/script/errhan.php");

if(!isset($_SESSION['user'])) {
    $_SESSION['user'] = new User;
}

// Páginas a las que se puede entrar sin haber ingresado
$publicpages = array("/index.php", "/login.php");

if(!$_SESSION['user']->loggedin && !in_array($_SERVER['PHP_SELF'], $publicpages) ) {
    // TO-DO
    // Respuesta de debug, cambiar
    echo $_SERVER['PHP_SELF'];
}

//Encriptación de contraseñas via BCrypt

function hash_pwd_bcrypt($password, $salt) {
    $cost = 15; // must be in range 04 – 31
 
    // The salt can only contain the characters "./0-9A-Za-z" and the length must be > 2, so the input gets md5ed
    return crypt($password, "$2a$" . sprintf("%02d", $cost) . "$". md5($salt) . "$");
}

 /*****************************
 * Funciones de base de datos *
 *****************************/

/**
 * Función simple para conectarse a la base de datos
 * 
 * $db = A que base de datos conectarse
 */
function db_connect($db = "BDU") {
    $link = new mysqli('localhost');
    if($link->connect_errno) { return 0; }
    if($link->select_db($db)) {
        return $link;
    } else {
        return 0;
    }
}

 /*************************
  * Funciones de usuarios *
  ************************/

class User {
    var $loggedin;
    var $id;
    var $name;
    var $perm;

    /**
    * Login de un usuario
    *
    * Argumentos:
    * $user = Usuario
    * $pwd = Contraseña
    */
    function login($user, $pwd) {
        $success = 0;
        if($this->loggedin) {return USER_ALREADYLOGGEDIN;}
        $link = db_connect();
        if(!$link) { return MYSQL_CONNECTERROR;}
        
        //Preparamos la consulta
        $query = $link->prepare("SELECT * FROM users WHERE username=':user'");
        $query->bindParam(":user",$user);
        $query->execute();
        
        //Tomamos los resultados
        if($result = $query->get_result()) {
            if(!$result->num_rows) {
                $link->close();
                return USER_INEXISTENT;
            }
            
            if($row = $result->fetch_array()) {
                if($row['password'] == $pwd) {
                    $this->loggedin = true;
                    $this->name = $user;
                    $this->id = $row['id'];
                    $this->perm = $row['perm'];
                    $success = 1;
                } else {
                    $link->close();
                    return USER_WRONGPASS;
                }
            }
        }
        $link->close();
        return $success;
    }

    /**
     * Refrescar información del usuario
     */

    function refresh() {
        $success = false;
        if(!$this->loggedin) { return USER_NOTLOGGEDIN; }
        $link = db_connect();
        if(!$link) { return MYSQL_CONNECTERROR; }
        $id = $_SESSION['user']->id;
        $query = "SELECT * FROM users WHERE id=\"{$id}\"";
        $link->real_query($query);
        if($result = $link->store_result()) {
            if($row = $result->fetch_array()) {
                $this->name = $row['username'];
                $this->perm = $row['perm'];
                $success = true;
            }
        }
        $link->close();
        if(!$success) session_destroy();
        return $success;
    }

    function signup($user, $pwd) {
        $success = 0;
        if($this->loggedin) { return USER_ALREADYLOGGEDIN; }
        
        $link = db_connect();
        if(!$link) { return MYSQL_CONNECTERROR; }
        
        $query = "SELECT username FROM users WHERE username ={$user}";
        $link->real_query($query);
        if($result = $link->store_result()) {
            if($result->num_rows) {
                $link->close();
                return USER_EXISTENT;
            }
        }
        $query = $link->prepare("INSERT INTO users(username,password,perm) VALUES(:user,:pwd,0)");
        $query->bindParam(":user",$user);
        $query->bindParam(":pwd",$pwd);
        $query->execute();
        if(!$link->errno) { $success = 1; }
        $query->close();
        return $success;
    }

    function __construct() {
        $this->loggedin = false;
        $this->name = "";
        $this->id = 0;
        $this->perm = 0;
        return $this;
    }

}

if($_SESSION['user']->loggedin) {
    $_SESSION['user']->refresh();
}


 /***********************
  * Funciones de estilo *
  **********************/
  
  function style_head() {
      echo 
      "<title>BDU</title>
      <meta charset=UTF-8>
      <script src='http://code.jquery.com/jquery-1.11.1.min.js'></script>
      <link rel=stylesheet href=/src/style/base.css>";
  }
  
?>