<?php 
include('funciones.php');
cabecera('Alumnos');
@ $conexion = new mysqli("containers-us-west-171.railway.app", "root", "uZfRyyhqGaFCHZz9W4vo", "railway","
7270");

 	mysqli_set_charset($conexion, "utf8");
extract($_POST);
echo "<pre>";
print_r($_POST);
echo "</pre>";

//Consulta para sacar el curso

$sqlCurso="SELECT nombre from cursos where id=".$cursos;

$resultadoCurso= $conexion->query($sqlCurso); //Envio consulta sql

$rowCurso = $resultadoCurso->fetch_assoc();

$nombreCurso="${rowCurso['nombre']}";

echo "<div id=\"contenido\">";
echo "<table align=center border=2 bgcolor='#F0FFFF'>"; 
echo "<tr><td colspan=2 align=center>Seleccione alumnos para asignar a ".$nombreCurso.", Año: ".$año."</td>"; 
echo "<tr><td colspan= align=center>Alumnos</td>"; 

echo "<td align=center>Selección</td><tr>"; 

//Tengo que meter en la tabla todos los alumnos los cuales no esten matriculados en el año seleccionado
echo "<form name='modificar' method=\"POST\" action='scriptactualizacion.php'>"; 

$sql = "SELECT (alumnos.nombre)alumNombre,(alumnos.id)alumid from alumnos where alumnos.id not in (SELECT alumnos_cursos.id_alumno FROM alumnos_cursos where alumnos_cursos.año  = \"$año\" ) ";

		 $resultado = $conexion->query($sql); //Envio consulta sql

		 while($row = $resultado->fetch_assoc())
		{
			 echo "<tr>";
			 	echo "<td>"."${row['alumNombre']}"."</td>";
			 	echo "<td>"."<input type='checkbox' name='" ."alumnos". "[]' value='"."${row['alumid']}"."'> ".""."</td>";//pongo checkbox para seleccionar
			 echo "</tr>";
		}
		echo "<input type=hidden name=año value=".$año.">";
		echo "<input type=hidden name=curso value=".$cursos.">";

		

?> 



<tr><td colspan=2 align=center><br><input type=submit value='Grabar'></tr>



</form></table> </html>
