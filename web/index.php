<?php
require($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php");
print_errors();
?>

<html>
<head>
    <?php style_head(); ?>
</head>
<body>
<div id="content">

    <h1>Login</h1>

    <form id="login_container" method=POST action="/login.php">
        <h2 class="login">Ingreso</h2>
        
        <div class=campo>
            <span>Nombre de usuario: </span>
            <input type=text name=user />
        </div>
            
        <div class=campo>
            <span>Contraseña: </span>
            <input type=password name=pass />
        </div>

        <input type=submit value=Ingresar>        
    </form>

</div>
</body>
</html>