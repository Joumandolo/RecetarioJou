<?php
#############################################################
# actions: 1 mostrar receta, 2 mostrar libro, 3 agregar receta
#############################################################

//Conexion al server
	$Server = "localhost";
	$Base_d	= "recetario";
	$Usr = "recetario";
	$Pass = "recetario";
	
//estructura de log

	#id usuario -> id
	#hora de acceso -> hora
	#fecha de accseso -> fecha

//accesos

	#0 -> no acces
	#1 -> leer
	#2 -> escrivir y modificar
	#3 -> administrador

//db conection
	function db_connect(){
		global $Server,$Usr,$Pass,$Base_d;
		$idc = mysql_connect($Server,$Usr,$Pass) or die("The DB server is down!");
		@mysql_select_db($Base_d) or die("The DB is not available!");
		return $idc;
		}
//devuelve el numero de filas afectadas
	function db_consulta_n($consulta,$IdConexion){
		$IdConsulta = mysql_query($consulta,$IdConexion) or die("error en la consulta ".mysql_error());
 		$NFilas = mysql_num_rows($IdConsulta);
		return $NFilas;
		}

//devuelve datos segun condulta
function db_consulta($consulta,$IdConexion){
		$IdConsulta = mysql_query($consulta,$IdConexion);
 		$Resultado = mysql_fetch_array($IdConsulta);
		return $Resultado;
		}

//ingresar log
	function session_log($usr,$hora,$fecha,$IdConexion){
		$consulta = "SELECT id FROM usuarios WHERE usuario = \"$usr\"";
		$IdConsulta = mysql_query($consulta,$IdConexion);
		$uid = mysql_fetch_array($IdConsulta);
		
		$consulta = "INSERT INTO log (uid,hora,fecha) VALUES (\"$uid[id]\",\"$hora\",\"$fecha\")";
		mysql_query($consulta,$IdConexion) or die("error log ".mysql_error());		
		return $uid[id];
		}

//comprovar la expiracion de la session
	function session_expire($h_ingreso,$h_actual){
		if($h_actual > $h_ingreso + 1800){
			session_destroy();
			header("Location: login.php?expire=true");
		}else return $h_actual += 1800;
		}
		
//si la session expiro redireccionar
	function session_exist($usrid){
		if(!$usrid) header("Location: login.php");
		}

//mostrar alfabeto
	function alf_mostrar(){
		$letras = array(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,d,t,u,v,w,x,y,z);
		foreach($letras as $letra){
			echo "<a class=\"alfabeto\" href=\"./index.php?dir=$letra\">$letra </a>";
			}
		}
//mostrar secciones
	function tipos_mostrar($IdConexion){
		$consulta = "SELECT tipo FROM tipos ORDER BY tipo ASC";
		$IdConsulta = mysql_query($consulta,$IdConexion);
		$Nn = mysql_num_rows($IdConsulta);
		for($i=0;$i<$Nn;$i++){
			$seccion = mysql_fetch_array($IdConsulta);
			echo "<a class=\"alfabeto\" href=\"./index.php?seccion=$seccion[tipo]\">$seccion[tipo]</a><br>";
			}
		}
//mostrar nombre de recetas por alfabeto
	function recetas_mostrar_alfabeto($IdConexion,$dir=""){
		if($dir){
			$consulta = "SELECT nombre FROM recetas";
			$IdConsulta = mysql_query($consulta,$IdConexion);
			$Nn = mysql_num_rows($IdConsulta);
			for($i=0;$i<$Nn;$i++){
				$nombres = mysql_fetch_array($IdConsulta);
				if (substr($nombres[nombre],0,1) == $dir){$letra[] = $nombres[nombre];}
				if (substr($nombres[nombre],0,1) == strtoupper($dir)){$letra[] = $nombres[nombre];}
				}
			if($letra){
				sort($letra);
				foreach($letra as $a){
					$consulta = "SELECT id FROM recetas WHERE nombre=\"$a\"";
					$IdConsulta = mysql_query($consulta,$IdConexion);
					$idreceta = mysql_fetch_array($IdConsulta);
					echo "<a class=\"text3\" href=\"index.php?action=1&idreceta=$idreceta[id]&dir=$dir\">$a</a><br>";
					}
			}else echo "*No hay Recetas Disponible";
			}
		}
//mostrar nombre de recetas por secciones
	function recetas_mostrar_tipos($IdConexion,$seccion=""){
		if($seccion){
			$consulta = "SELECT nombre,id FROM recetas WHERE tipo1=\"$seccion\" OR tipo2=\"$seccion\" ORDER BY nombre ASC";
			$IdConsulta = mysql_query($consulta,$IdConexion) or die(mysql_error());
			$Nn = mysql_num_rows($IdConsulta);
			for($i=0;$i<$Nn;$i++){
				$nombre = mysql_fetch_array($IdConsulta);
				echo "<a class=\"text3\" href=\"index.php?action=1&idreceta=$nombre[id]&seccion=$seccion\">$nombre[nombre]</a><br>";
				}
			}
		}
//mostrar libros**************
	function mostrar_libros($IdConexion){
		$consulta = "SELECT nombre FROM libros ORDER BY nombre ASC";
		$IdConsulta = mysql_query($consulta,$IdConexion) or die(mysql_error());
		$Nn = mysql_num_rows($IdConsulta);
		for($i=0;$i<$Nn;$i++){
			$nombre = mysql_fetch_array($IdConsulta);
			echo "<a class=\"text3\" href=\"index.php?action=2&libro=$nombre[nombre]\">$nombre[nombre]</a><br>";
			}
		}
	

//class para mostrar la receta
	class receta{
		function receta($idreceta,$IdConexion){
		//tabla libronegro aun no es definitivo****
			$consulta = "SELECT nombre,ingredientes,receta,tipo1,tipo2,libro,foto FROM recetas WHERE id=$idreceta";
			$IdConsulta = mysql_query($consulta,$IdConexion);
			$this->datos = mysql_fetch_array($IdConsulta);
			$this->datos[foto] = "./img_recetas/logo1.gif";
			}
		function nombre() {echo $this->datos[nombre];}
		function ingredientes() {echo nl2br($this->datos[ingredientes]);}
		function detalle() {echo nl2br($this->datos[receta]);}
		function tipo1() {echo $this->datos[tipo1];}
		function tipo2() {echo $this->datos[tipo2];}
		function libro() {echo $this->datos[libro];}
		function foto() {echo '<img src="'.$this->datos[foto].'" width="100" height="100"/>';}
		}
		
//imprime datos de recetas
	function receta_imprime($idreceta,$IdConexion){
		$datosreceta = new receta($idreceta,$IdConexion);
		echo "
		<table width=506 border=0 cellspacing=0 cellpadding=0 class=text1>
		 <tr> 
		  <td height=20 colspan=2 background=./img/borde1cont.gif class=text2>",$datosreceta->nombre(),"</td>
		 </tr>
		 <tr>
		  <td colspan=2 class=tablalogin3>&nbsp;</td>
		 </tr>
		 <tr> 
		  <td colspan=2 class=tablalogin3>
		   <table align=center width=350 border=0 cellspacing=0 cellpadding=0>
		    <tr>
		     <td><span class=text3>",$datosreceta->ingredientes(),"</span></td>
		     <td><span class=text3>",$datosreceta->foto(),"</span></td>
		    </tr>
		    <tr>
		     <td colspan=2><span class=text3><br>",$datosreceta->detalle(),"</span></td>
		    </tr>
		    <tr>
		      <td align=right colspan=2>&nbsp;</td>
	         </tr>
		    <tr>
		     <td align=right colspan=2><span class=text3>",$datosreceta->tipo1()," - ",$datosreceta->tipo2()," - ",$datosreceta->libro(),"</span></td>
		    </tr>
		   </table>
		  </td>
		 </tr>
		 <tr> 
		  <td height=20 colspan=2 background=./img/borde2cont.gif><img src=./img/blank.gif></td>
		 </tr>
		</table>";
	}

//imprime form para agregar nueva receta
	function receta_agregar($IdConexion){
		if($_POST[datos]){
			//por actualizar datos y libronegro***********
			$consulta = "INSERT INTO recetas (nombre,ingredientes,receta,tipo1,tipo2,libro) VALUES (\"$_POST[nombre]\", \"$_POST[ingredientes]\", \"$_POST[receta]\", \"$_POST[tipo1]\", \"$_POST[tipo2]\", \"$_POST[libro]\")";
			@mysql_query($consulta,$IdConexion) or die("error".mysql_error());
			echo "Receta agregada exitosamente";//cambiar despues
		}else{
			$consulta = "SELECT tipo FROM tipos ORDER BY tipo ASC";
			$IdConsulta = mysql_query($consulta,$IdConexion);
			$Nn = mysql_num_rows($IdConsulta);
			for($i=0;$i<$Nn;$i++) $tipos[] = mysql_fetch_array($IdConsulta);
			$consulta = "SELECT nombre FROM libros ORDER BY nombre ASC";
			$IdConsulta = mysql_query($consulta,$IdConexion);
			$Nn = mysql_num_rows($IdConsulta);
			for($i=0;$i<$Nn;$i++) $libros[] = mysql_fetch_array($IdConsulta);

			echo "<table width=506 border=0 cellspacing=0 cellpadding=0 class=text1>
			<tr> 
			 <td height=20 colspan=2 background=./img/borde1cont.gif class=text2>Agregar Nueva Receta</td>
			</tr>
			<tr>
			 <td colspan=2 class=tablalogin3>&nbsp;</td>
			</tr>
			<tr> 
			 <td colspan=2 class=tablalogin3>
			 <center>
			 <form name=form1 method=post action=>
			 <table width=300 border=0 cellspacing=0 cellpadding=0>
			<tr>
			 <td align=right class=text3>Nombre:</td>
			 <td><input type=text name=nombre class=inputext></td>
			</tr>
			<tr>
			 <td align=right valign=top class=text3>Ingredientes:</td>
			 <td><textarea name=ingredientes cols=30 rows=5 class=inputext></textarea></td>
			</tr>
			<tr>
			 <td align=right valign=top class=text3>Receta:</td>
			 <td><textarea name=receta cols=30 rows=5 class=inputext></textarea></td>
			</tr>
			<tr>
			 <td align=right class=text3>Tipo1:</td>
			 <td><select name=tipo1><option selected value=></option>"; foreach($tipos as $i) echo "<option>".$i[tipo]."</option>"; echo "</td>
			</tr>
			<tr>
			 <td align=right class=text3>Tipo2:</td>
			 <td><select name=tipo2><option selected value=></option>"; foreach($tipos as $i) echo "<option>".$i[tipo]."</option>";; echo "</td>
			</tr>
			<tr>
			 <td align=right class=text3>Libro:</td>
			 <td><select name=libro>"; foreach($libros as $i) echo "<option>".$i[nombre]; echo "</td>
			</tr>
			<tr>
			 <td align=right class=text3>Foto:</td>
			 <td><input type=file name=foto class=inputext></td>
			</tr>
			<tr>
			 <td>&nbsp;</td>
			 <td><br>
			  <input name=Input type=submit value=Agregar class=botonlogin>
			  <input type=hidden name=action value=3>
			  <input type=hidden name=datos value=1>
			 </td>
			</tr>
			</table>
			</form></center>
			</td>
			</tr>
			<tr> 
			<td height=20 colspan=2 background=./img/borde2cont.gif><img src=./img/blank.gif></td>
			</tr>
			</table>";
		}
	}
?>