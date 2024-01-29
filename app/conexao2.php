<!-- versao secrets do chatgpt -->
<?php
$servername = "mysql-connection";
$username = "root";
$password = base64_decode(getenv("ROOT_PASSWORD")); // Decodifique a senha da variável de ambiente
$database = getenv("MYSQL_DATABASE");

// Criar conexão
$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
?>
