<?php
$usuario  = "apache";
$password = "abc123";
$servidor = "localhost";
$basededatos = "hirh";
$con = mysqli_connect($servidor, $usuario, $password) or die("No se ha podido conectar al Servidor");
$db = mysqli_select_db($con, $basededatos) or die("Upps! Error en conectar a la Base de Datos");
$id 		    = $_REQUEST['id'];
$tokenUser 		= $_REQUEST['tokenUser'];
$password       = $_REQUEST['password'];

$updateClave    = ("UPDATE usuario SET contrasena='$password' WHERE idusuario='".$id."' AND forgot_pass_identity='".$tokenUser."' ");
$queryResult    = mysqli_query($con,$updateClave); 

?>

<meta http-equiv="refresh" content="0;url=login.php?email=1"/>