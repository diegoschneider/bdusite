<?php
 /***********************************
 * Funciones básicas del sistema :3 *
 ***********************************/

 session_start();
 require("errhan.php");
//Maximo tiempo de inactividad hasta que se cierre la sesión
 define("MAX_SESSION_TIME", 900);

 if (!isset($_SESSION['CREATED'])) {
    $_SESSION['CREATED'] = time();
} else if (time() - $_SESSION['CREATED'] > MAX_SESSION_TIME) {
    // session started more than MAX_SESSION_TIME seconds ago
    session_regenerate_id(true);    // change session ID for the current session an invalidate old session ID
    $_SESSION['CREATED'] = time();  // update creation time
}

if(isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > MAX_SESSION_TIME)) {
    // last request was more than 30 minutes ago
    session_unset();     // unset $_SESSION variable for the run-time 
    session_destroy();   // destroy session data in storage
    header("location: /");
}
$_SESSION['LAST_ACTIVITY'] = time(); // update last activity time stamp

if(!isset($_SESSION['user'])) {
    $_SESSION['user'] = new User;
}

// Páginas a las que se puede entrar sin haber ingresado
$publicpages = array("/index.php", "/login.php", "/logout.php");

if(!$_SESSION['user']->loggedin && !in_array($_SERVER['PHP_SELF'], $publicpages) ) {
    header("location: /");
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
    $link = mysqli_init();
    $link->options(MYSQLI_OPT_CONNECT_TIMEOUT, 1);
    $link->real_connect("127.0.0.1");
    if($link->connect_errno) { return 0; }
    if($link->select_db($db)) {
        return $link;
    } else {
        return 0;
    }
}

/**
 * Crea el mysqli_stmt para un formulario
 *
 * $campos -> Array(nombre, tipo, valor)
 */

function insert($link, $tabla, &$campos) {
    $type = "";
    $temp = array();
    $sql = "INSERT INTO $tabla (";//) para corregir tabs Sublime Text 2

    foreach ($campos as $key => $value) {
        $sql .= $key.",";
        $type .= $value['tipo'];
        $temp[] = $value['valor'];
    }
    $sql .= ") VALUES (";
    foreach ($campos as $value) {
        $sql .= "?,";
    }
    //( para corregir tabs
    $sql .= ")";

$sql = str_replace(",)", ")", $sql);
$stmt = $link->prepare($sql);
$refs = refValues($temp);
call_user_func_array(array($stmt, 'bind_param'), array_merge(array($type), $refs));
$stmt->execute();

if($stmt->error) {
    echo "<br>Error: ".$stmt->error;
} else {
    echo "<br>Agregado correctamente";
}
}

function campo($tipo,$valor) {
    return Array('tipo' => $tipo, 'valor' => $valor);
}

function get_codcur($cur, $div) {
    $link = db_connect();
    $sql = "SELECT cod FROM cursos WHERE año=? AND division=?";
    $stmt = $link->prepare($sql);
    if($stmt) {
        $stmt->bind_param("ii",$cur,$div);
        $stmt->execute();
        $result = $stmt->get_result();
        if($result->num_rows) {        
            $row = $result->fetch_row();
            $ret = $row[0];
        } else {
            $ret = null;
        }
        return $ret;
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
    * 
    * Returns:
    * 1 al login | ErrorNum si hay error
    */
    function login($user, $pwd) {
        $success = 0;
        if($this->loggedin) {return USER_ALREADYLOGGEDIN;}
        $link = db_connect("BDU");
        if(!$link) { return MYSQL_CONNECTERROR;}
        
        $ip = $_SERVER['REMOTE_ADDR'];
        //Preparamos la consulta
        $stmt = $link->prepare("SELECT * FROM users WHERE username=?");
        $stmt->bind_param("s",$user);
        $stmt->execute();
        //Tomamos los resultados
        $result = $stmt->get_result();

        if(!$result->num_rows) {
            $loginresult = USER_INEXISTENT;
        } else if($row = $result->fetch_array()) {
            $userid = $row['id'];
            if($row['loginfails'] >= 5) {
                $loginresult = USER_BLOCKED;
            } else if($row['password'] == $pwd) {
                $this->loggedin = true;
                $this->name = $user;
                $this->id = $row['id'];
                $this->perm = $row['perm'];
                $loginresult = 1;

                $sql = "UPDATE users SET loginfails=0 WHERE id=?;";
                $stmt = $link->prepare($sql);
                $stmt->bind_param("i", $row['id']);
                $stmt->execute();
            } else {
                $loginfails = $row['loginfails']+1;
                $sql = "UPDATE users SET loginfails=? WHERE id=?";
                $stmt = $link->prepare($sql);
                $stmt->bind_param("ii", $loginfails, $row['id']);
                $stmt->execute();
                if($loginfails >= 5) {
                    $loginresult = USER_BLOCKED;
                } else {
                    $loginresult = USER_WRONGPASS;
                }
            }
        }

        switch ($loginresult) {
            case USER_INEXISTENT: {
                $userid = null;
                $success = false;
                $newloginfails = 0;
                break;
            }
            case USER_BLOCKED: {
                $newloginfails = 5;
                $success = false;
                break;
            }
            case USER_WRONGPASS: {
                $newloginfails = $loginfails;
                $success = false;
                break;
            }
            case 1: {
                $newloginfails = 0;
                $success = true;
                break;
            }
        }
        $sql = "UPDATE users SET loginfails=? WHERE id=?";
        $stmt = $link->prepare($sql);
        $stmt->bind_param("ii",$newloginfails, $userid);
        $stmt->execute();

        $sql = "INSERT INTO logins(ip,userid,success, newloginfails) VALUES(?,?,?,?)";
        $stmt = $link->prepare($sql);
        $stmt->bind_param("siii", $ip, $userid, $success, $newloginfails);
        $stmt->execute();
        
        $link->close();
        return $loginresult;
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
        $sql = "SELECT * FROM users WHERE id=?;";
        $stmt = $link->prepare($sql);
        $stmt->bind_param("i",$id);
        $stmt->execute();
        $result = $stmt->get_result();
        if($row = $result->fetch_array()) {
            $this->name = $row['username'];
            $this->perm = $row['perm'];
            $success = true;
        }
        $link->close();
        if(!$success) {
            session_unset();
            session_destroy();
        }
        return $success;
    }

    function __construct() {
        $this->loggedin = false;
        $this->name = "";
        $this->id = 0;
        $this->perm = 0;
        $this->logout = false;
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
    $ret =
    "<title>BDU</title>
    <meta charset=UTF-8>
    <link rel=stylesheet href=/src/style/base.css>
    <script src='/src/jquery-1.11.1.min.js'></script>
    <script src='/src/jquery-ui.min.js'></script>
    <script src='/src/script/submit.js'></script>";
    if(!$_SESSION['user']->loggedin) {
        $ret.=
        "<script src=/src/script/login.js></script>";
    }
    echo $ret;
}

function style_header() {
    $ret =
    "<div id=\"header\" class=\"horizontal nav\">
    <img src=\"/src/img/logo.jpg\" id=\"logo\" width=26 height=26>
    <ul>
    <li><a href=\"/\">Home</a></li>";
    if($_SESSION['user']->loggedin) {
        $ret .= "<li><a href=\"/manage\">administrar</a></li>
        <li class=\"logout\"><a href=\"/logout.php\">Cerrar Sesión</a></li>
        <li class=\"logout\" target=_blank><a href=\"/ayuda.php\">Ayuda/Contacto</a></li>";
    }
    $ret .= "</ul>
    </div>";
    echo $ret;
}

function style_manage_nav($nav) {

    if($nav === true) {
        $nav = Array("." => "Volver");
    }
    
    $ret = "<div class=\"horizontal nav\"><ul>";

    foreach($nav as $key => $value) {
        $ret .= "<li><a href=\"$key\">$value</a></li>";
    }

    $ret .= "</ul></div>";
    echo $ret;
}

function query_table($result) {
    $ret = "";
    while($row = $result->fetch_row()) {
        $ret .= "<tr>";
        foreach ($row as $key => $value) {
            $ret .= "<td>$value</td>";
        }
        $ret .= "</tr>";

    }
    $temp = "<tr>";
    $fields = $result->fetch_fields();
    foreach ($fields as $key => $value) {
        $temp .= "<th>{$value->name}</th>";
    }
    $temp .= "</tr>";
    $ret = $temp.$ret;
    echo $ret;
}

function form_select($link, $sql, $default = null) {
    $result = $link->query($sql);
    $options = array();
    $ret = array();
    while($row = $result->fetch_row()) {
        $options[$row[0]] = "<option value={$row[0]}>{$row[1]}</option>";
    }
    if(is_null($default)) {
        $ret = "<option value=-1>Seleccione...</option>";
        foreach ($options as $key => $value) {
            $ret .= $options[$key];
        }
    } else {
        $ret = $options[$default];
        foreach ($options as $key => $value) {
            if($key == $default) continue;
            $ret .= $options[$key];
        }
    }
    return $ret;
}

function refValues(&$arr) {
    $refs = array();

    foreach ($arr as $key => $value) {
        $refs[$key] = &$arr[$key]; 
    }
    return $refs;
}

function valid_input($var) {
    if(isset($var) && !is_null($var) && $var != '') {
        return true;
    }
    return false;
}

?>