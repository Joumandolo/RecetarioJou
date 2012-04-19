<?php
require("./libagenda.php");
$IdConexion = db_connect();
?>
<head>
<link rel="STYLESHEET" type="text/css" href="./estilo.css">
</head>
<body>
<center>
<table width="93%" border="0" cellspacing="0" cellpadding="0">
 <tr> 
  <td height="80" colspan="2" class="borde1">&nbsp;</td>
 </tr>
 <tr> 
  <td height="10" colspan="2">&nbsp;</td>
 </tr>
 <tr> 
  <td width="180">
   <table width="180" height="20" border="0" cellpadding="00" cellspacing="0" class="text1">
    <tr> 
     <td height="20" colspan="2" background="./img/borde1login.gif"><span class="text2">Busqueda Alfabetica</span></td>
    </tr>
    <tr> 
     <td class="tablalogin3">
      <br>
      <?php alf_mostrar(); ?>
     </td>
    </tr>
    <tr>
     <td align="left" class="tablalogin3">
      <br>
      <?php recetas_mostrar_alfabeto($IdConexion,$_GET[dir]); ?>
     </td>
    </tr>
    <tr> 
     <td align="right" height="20" colspan="2" background="./img/borde2login.gif">
      <?php echo "<a class=alfabeto href=index.php?action=3>Nueva Receta</a><img src=img/blank.gif width=5 height=5>"; ?>
     </td>
    </tr>
   </table>
   <br>
   <table width="180" height="20" border="0" cellpadding="00" cellspacing="0" class="text1">
    <tr> 
     <td height="20" colspan="2" background="./img/borde1login.gif"><span class="text2">Secciones</span></td>
    </tr>
    <tr> 
     <td class="tablalogin3">
      <br>
      <?php tipos_mostrar($IdConexion); ?>
     </td>
    </tr>
    <tr>
     <td align="left" class="tablalogin3">
      <br>
      <?php recetas_mostrar_tipos($IdConexion,$_GET[seccion]); ?>
     </td>
    </tr>
    <tr> 
     <td align="right" height="20" colspan="2" background="./img/borde2login.gif">&nbsp;</td>
    </tr>
   </table>
   <br>
   <table width="180" height="20" border="0" cellpadding="00" cellspacing="0" class="text1">
    <tr> 
     <td height="20" colspan="2" background="./img/borde1login.gif"><span class="text2">Libros</span></td>
    </tr>
    <tr> 
     <td class="tablalogin3">
      <br>
      <?php mostrar_libros($IdConexion); ?>
     </td>
    </tr>
    <tr> 
     <td align="right" height="20" colspan="2" background="./img/borde2login.gif">&nbsp;</td>
    </tr>
   </table>
  </td>
  <td valign="top" width="506">
   <?php if($_GET[action] == 1) receta_imprime($_GET[idreceta],$IdConexion); elseif($_REQUEST[action] == "3") receta_agregar($IdConexion); ?>
  </td>
 </tr>
</table>
</center>