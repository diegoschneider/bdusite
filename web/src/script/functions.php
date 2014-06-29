<?php
 /***********************************
 * Funciones básicas del sistema :3 *
 ***********************************/

session_start();
require("errhan.php");

if(!isset($_SESSION['user']) || $_SESSION['user']->logout) {
    $_SESSION['user'] = new User;
}

// Páginas a las que se puede entrar sin haber ingresado
$publicpages = array("/index.php", "/login.php", "/logout.php");

if(!$_SESSION['user']->loggedin && !in_array($_SERVER['PHP_SELF'], $publicpages) ) {
    // TO-DO
    // Respuesta de debug, cambiar
    //echo $_SERVER['PHP_SELF'];

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
    $link = new mysqli('127.0.0.1');
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
    var $logout;
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
        
        //Preparamos la consulta
        $query = $link->prepare("SELECT * FROM users WHERE username=?");
        $query->bind_param("s",$user);
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
     *
     * TO-DO
     * Arreglar esto con mysqli->prepare
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
    <script src='http://code.jquery.com/jquery-1.11.1.min.js'></script>";
    if(!$_SESSION['user']->loggedin) {
        $ret.=
        "<script src=/src/script/login.js></script>";
    }
    echo $ret;
}

function style_header() {
    $ret =
    "<div id=\"header\" class=horizontalnav>
        <img src=\"/src/img/logo.jpg\" width=28>
        <ul>
            <li><a href=\"/\">Home</a></li>";
            if($_SESSION['user']->loggedin) {
                $ret .= "<li><a href=\"/manage.php\">administrar</a></li>
                <li class=\"logout\"><a href=\"/logout.php\">Cerrar Sesión</a></li>";
            }
        $ret .= "</ul>
    </div>";
    echo $ret;
}

 /**************
 * Formularios *
 **************/

/*

Formato del JSON:

{
    "html" : 
    "<form>
        <select name=tabla></select>
        <etc></etc>
    </form>",
    "sql" : "INSERT INTO etc."
}

*/

$tables_dir = scandir($_SERVER['DOCUMENT_ROOT']."/src/forms/");
$tables = array();
foreach ($tables_dir as $value) {
    if($value[0] != ".") {
        $tables[] = stristr($value, ".json",true);
    }
}

unset($tables_dir);

class Form {
    var $formhtml;
    var $queryhtml;
    var $insertsql;
    var $deletesql;
    var $updatesql;
    var $queryes;
    var $error;

    function __construct($table) {
        $data = file_get_contents($_SERVER['DOCUMENT_ROOT']."/src/forms/".$table.".json");
        if(!$data) {
            $this->error = TABLE_INEXISTENT;
            return $this;
        }

        $obj = json_decode($data);
        $this->formhtml = file_get_contents($_SERVER['DOCUMENT_ROOT']."/src/forms/.".$table.".form.html");
        $this->queryhtml = file_get_contents($_SERVER['DOCUMENT_ROOT']."/src/forms/.".$table.".query.html");
        $this->insertsql = $obj->insertsql;
        $this->updatesql = $obj->updatesql;
        $this->deletesql = $obj->deletesql;
        $this->queryes = $obj->queryes;
        $this->formqueryes = $obj->formqueryes;

        return $this;
    }

    function print_query() {
        $link = db_connect();
        if(!$link) { return MYSQL_CONNECTERROR; }

        $ret = "";

        foreach ($this->queryes as $key => $value) {
            $result = $link->query($value);

            while($row = $result->fetch_row()) {
                $ret .= "<tr>";
                foreach($row as $value) {
                    $ret .= "<td>$value</td>";
                }
                $ret .= "</tr>";
            }

            $this->queryhtml = str_replace($key, $ret, $this->queryhtml);
        }

        echo $this->queryhtml;

    }

    function print_form() {
        if($this->formqueryes) {

            $link = db_connect();
            if(!$link) { return MYSQL_CONNECTERROR; }

            $ret = "";

            foreach ($this->formqueryes as $key => $value) {
                
                $result = $link->query($value);

                while($row = $result->fetch_row()) {
                    $ret .= "<option value=".$row[0].">".$row[1]."</option>";
                }
                $this->formhtml = str_replace($key, $ret, $this->formhtml);
            }
        }

        echo $this->formhtml;
    }

    function submit($data) {
        if(!is_array($data)) {
            return INVALID_REQUEST;
        }

        foreach($data as $key => $value) {
            $this->insertsql = str_replace(":".$key.":", $data[$key], $this->insertsql);
        }
        return $this->insertsql;
    }


}

?>