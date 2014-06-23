<?php
require("./src/script/functions.php");
$link = db_connect();
if(!$link) { die(); }
echo "start";
if(mysqli_num_rows($link->query("SHOW TABLES LIKE 'errorlog'"))==0) {
    $query = "CREATE TABLE errorlog (
        id INT NOT NULL AUTO_INCREMENT,
        errno INT NOT NULL,
        errstr VARCHAR(255),
        errfile VARCHAR(128),
        errline INT,
        timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (id)
    );";
    $link->query($query);
}

echo "ERRORLOG";

if(mysqli_num_rows($link->query("SHOW TABLES LIKE 'users'"))==0) {
    $query = "CREATE TABLE users (
        id INT NOT NULL AUTO_INCREMENT,
        username VARCHAR(255) NOT NULL,
        password VARCHAR(255) NOT NULL,
        perm INT  NOT NULL,
        PRIMARY KEY (id)
    );";
    $link->query($query);
}
echo "users";

$link->close();

?>