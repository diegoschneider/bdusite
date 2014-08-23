<?php
require_once("./src/script/functions.php");
?>

<html>
<head>
    <?php style_head(); ?>
</head>
<body>

    <?php style_header(); ?>

    <div id="content">

        <?php if(!$_SESSION['user']->loggedin) { ?>

        <h1>Login - Proyecto BDU</h1>
        <h2>Base de Datos Unificada</h2>
        <p>Luego de <?php echo MAX_SESSION_TIME/60 ?> minutos de inactividad, la sesión se cerrará</p>
        <p><?php echo "SERVER: REMOTE_ADDR: {$_SERVER['REMOTE_ADDR']}"; ?></p>
        <form id="login_container" class="container">
            <h2>Ingreso</h2>
            
            <div class=campo>
                <span>Nombre de usuario: </span>
                <input type=text id="user" />
            </div>
            
            <div class=campo>
                <span>Contraseña: </span>
                <input type=password id="pass" />
            </div>

            <input type=submit value=Ingresar>
            <br>
            <div class=error><span id="errors" onclick="writeerror(this);"></span></div>
        </form>

        <?php } else { ?>

        <h1>Bienvenido - Proyecto BDU</h1>
        <h2>Base de Datos Unificada</h2>

        <div id="userpanel_container" class="container">
            <h2>Panel de usuario</h2>

            <div class=campo>
                <span>Has iniciado sesión como <?php echo $_SESSION['user']->name; ?></span>
                <a href="/logout.php"><input type=button value="Logout"></a>
            </div>
        </div>

        <?php } ?>
    </div>
</body>
</html>