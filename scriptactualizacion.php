<?php 
//tras hacer los inserts vuelve a formulario.php
@ $conexion = new mysqli("localhost", "root", "", "preparadasb");

extract($_POST);
echo "<pre>";
print_r($_POST);
echo "</pre>";

if(!isset($_POST['alumnos']))
{
	header ("Location:formulario.php");
}else{


$idAlumnos = $_POST['alumnos'];


$consulta = $conexion->stmt_init();//Le cargo la base de datos

$sql = "INSERT INTO alumnos_cursos  VALUES(? ,?, ?)";


$consulta->prepare($sql);//Le preparo la consulta

foreach ($idAlumnos as $key => $value) {

	$consulta->bind_param('iis', $curso,$value,$año); 
	$consulta->execute();//Ejecuta la sql con los valores

}
header ("Location:formulario.php");
}


?> 


