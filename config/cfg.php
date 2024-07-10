<?php
$dbHost = "Localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "biblioteca";

$conexao = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

// if ($conexao->connect_error) {
//     die("Conexão falhou: " . $conexao->connect_error);
// }
?>