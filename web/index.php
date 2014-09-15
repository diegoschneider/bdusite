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

        <h1>Proyecto BDU</h1>
        <h2>Base de Datos Unificada</h2>
        <p>Luego de <?php echo MAX_SESSION_TIME/60 ?> minutos de inactividad, la sesión se cerrará</p>

        <?php if(!$_SESSION['user']->loggedin) { ?>

        <form id="login_container" class="container">
            <h2>Ingreso</h2>
            
            <div class=campo>
                <div class=label>
                    <span>Nombre de usuario: </span>
                </div>
                <div class=input>
                    <input type=text id="user" />
                </div>
            </div>
            
            <div class=campo>
                <div class=label>
                    <span>Contraseña: </span>
                </div>
                <div class=input>
                    <input type=password id="pass" />
                </div>
            </div>

            <input type=submit value=Ingresar>
            <br>
            <div class=error><span id="errors" onclick="writeerror(this);"></span></div>
        </form>

        <?php } else { ?>

        <div id="userpanel_container" class="container">
            <h2>Panel de usuario</h2>

            <div class=campo>
                <span>Has iniciado sesión como <?php echo $_SESSION['user']->name; ?></span>
            </div>
        </div>

        <?php } ?>
    </div>
</body>
</html>