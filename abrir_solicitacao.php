<?php  
	session_start();
	require "sessao_time.php"; 
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sem título</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/menu.css">
<script language="javascript" src="js/script_moeda.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="js/script_conteudo.js"></script>
<script type="text/javascript">  
<!--MASCARA FORMULARIO-->
function formatar(mascara, documento) {
  var i = documento.value.length;
  var saida = mascara.substring(0, 1);
  var texto = mascara.substring(i);
  if (texto.substring(0, 1) != saida) {
    documento.value += texto.substring(0, 1);
    }
}

function cnpj(cnpj){ 
   	if(cnpj.value.length == 2)
    	cnpj.value = cnpj.value + '.'; //COLOCA O PONTO APÓS O SEGUNDO NÚMERO
 
 	if(cnpj.value.length == 6)
			cnpj.value = cnpj.value + '.'; //COLOCA O PONTO APÓS O QUINTO NÚMERO
	 
	if(cnpj.value.length == 10)
     	cnpj.value = cnpj.value + '/'; //COLOCA A BARRA APÓS O NONO NÚMERO
		
	if(cnpj.value.length == 15)
     	cnpj.value = cnpj.value + '-'; //COLOCA O TRAÇO APÓS O DECIMO SEGUNDO NÚMERO
}
      
function mascara(telefone){ 
   if(telefone.value.length == 0)
     telefone.value = '(' + telefone.value; //quando começamos a digitar, o script irá inserir um parênteses no começo do campo.
   if(telefone.value.length == 3)
      telefone.value = telefone.value + ') '; //quando o campo já tiver 3 caracteres (um parênteses e 2 números) o script irá inserir mais um parênteses, fechando assim o código de área.
   if(telefone.value.length == 9)
     telefone.value = telefone.value + '-'; //quando o campo já tiver 8 caracteres, o script irá inserir um tracinho, para melhor visualização do telefone.
}

function cel(telefone){ 
   if(telefone.value.length == 0)
     telefone.value = '(' + telefone.value; //quando começamos a digitar, o script irá inserir um parênteses no começo do campo.
   if(telefone.value.length == 3)
      telefone.value = telefone.value + ') '; //quando o campo já tiver 3 caracteres (um parênteses e 2 números) o script irá inserir mais um parênteses, fechando assim o código de área.
   if(telefone.value.length == 10)
     telefone.value = telefone.value + '-'; //quando o campo já tiver 8 caracteres, o script irá inserir um tracinho, para melhor visualização do telefone.
}

$(document).ready(function(){
		    $("#cnpj").mask("99.999.999/9999-99");
		});

//HOUVER DOS LINKs
function ChangeColor(tableRow, highLight)
    {
    if (highLight)
    {
      tableRow.style.backgroundColor = '#A3A3A3';
    tableRow.style.color = '#FFFFFF';
    }
    else
    {
      tableRow.style.backgroundColor = 'white';
    tableRow.style.color = '#000000';
    }
  }

  function DoNav(theUrl)
  {
  document.location.href = theUrl;
  } 
  
function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}

function validateChar(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /^[a-z A-Z]+$/;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}
</script>
</head>

<body>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

//RECEBE VARIAVEL ID 
date_default_timezone_set('America/Sao_Paulo');
$id 	= $_SESSION ["id_user"];
$date 	= date('d/m/Y');
$time 	= date('H:i');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
  //RECEBE DADOS DO FORMULARIO
  $id_user = test_input($_POST["id_user"]);
  $data = test_input($_POST["data"]);  
  $nome = test_input($_POST["nome"]);
  $assunto = test_input($_POST["assunto"]);
  $msg = test_input($_POST["msg"]);
  $para = test_input($_POST["para"]);
 
    $aviso = array (
	'id_usuario_sigepe' => $id_user,
	'data_solicitacao' => $data,
    'usuario_sigepe' => $nome,
    'assunto_aviso' => $assunto,
    'mensagem' => $msg,
	'para' => $para
  );
  
  $grava = DBCreate('aviso_sigepe', $aviso);
  
//EVIAR E-MAIL
// Corpo E-mail
$arquivo = "
<style type='text/css'>
* {
	padding: 0;
	margin: 0;
}

table {
	font-family: Gotham, 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 14px;
	border: 1px solid hsla(0,0%,72%,1.00);
	border-radius: 10px  10px  10px  10px;
	padding: 20px;
	margin: 20px;
}
b {
	color: hsla(359,100%,27%,1.00);
}
span {
	color: hsla(0,0%,36%,1.00);
	font-size:14px;
}

#topo {
	width: 100%;
	height: 60px;
	background: hsla(359,100%,40%,1.00);
	padding: 0 20px 0 20px;
	margin-bottom: 20px;
}
img {
	width: 15%;
	float: left;
}
</style>

<html charset='utf-8'>
<div style='width: 100%; height: 60px; background-color: #434343; background: -webkit-linear-gradient(#434343, #686868); background: -moz-linear-gradient(#434343, #686868);	background: -o-linear-gradient(#434343, #686868); background: -ms-linear-gradient(#434343, #686868); background: linear-gradient(#434343, #686868); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15); padding: 10px 20px 0 20px; margin-bottom: 20px;'>

<img src='http://www.artspeck.com.br/imagens/logo_sigepe.png' width='27%'>
</div>
<table width='100%' border='0' cellpadding='1' cellspacing='1' charset='utf-8'>
	<tr>
	<td height='75' valign='top' style='font-size:26px; color: #969696;'> 
    	<b>Solicitação de Atendimento</b>
    </td>
</tr>
<tr>
	<td> 
   		<p><strong>Solicitante:</strong> $nome;</p>
    	<p><strong>Assunto:</strong> $assunto;</p>
    	<p><strong>Data:</strong> $data;</p>
    	<p><strong>Mensagem:</strong> $msg;</p>
    </td>
</tr>
</table>
</html>
	";

// -------------------------

//enviar
	
	// emails para quem será enviado o formulário
	$destino = 'raphael.a.a.p@gmail.com';
	$assunto = "Solicitação de Atendimento SIGEPE.";
	
	// É necessário indicar que o formato do e-mail é html
	$headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
    $headers .= 'From: '."Sistema SIGEPE <naoresponder@sigepe.com.br>";
   	//$headers .= "Bcc: $EmailPadrao\r\n";
		
	$enviaremail = mail($destino, $assunto, $arquivo, $headers);

  
  if ($grava) {
    echo "<script> alert('Solicitação feita com sucesso!') </script>";
    echo "<script>location.href=('branco.php')</script>";
  }
  else { 
    echo "Erro ao fazer solicitação, tente novamente mais tarde!";
    exit;
    }
}
  function test_input($data) {
      $data = trim($data);
      $data = stripslashes($data);
      $data = htmlspecialchars($data);
      return $data;
  }
	
	//LÊ DADOS DO BANCO
  $le_user = DBRead ('usuario', "WHERE id_usuario = '$id'", '*');
 
  foreach ($le_user as $user){
?>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" onsubmit="return valida_form(this)">
<table border="0" cellpadding="0" cellspacing="0" class="table">
  <tbody>
    <tr>
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Abrir Solicitação de Atendimento</span></td>
    </tr>
    <tr>
      <td width="16%" align="right" valign="middle">Solicitante:</td>
      <td width="84%">
      	<input type="hidden" name="id_user" value="<?php echo $user['id_usuario']; ?>">
      	<input type="hidden" name="data" value="<?php echo ''.$date.' as '.$time.''; ?>">
      	<input type="text" name="nome" class="text" style="border: 0px;" readonly value="<?php echo $user['nome_usuario']; ?>">
      </td>
    </tr>
    <tr>
      <td align="right" valign="middle">Assunto:</td>
      <td><input type="text" name="assunto" class="text"></td>
    </tr>
    <tr>
      <td align="right" valign="top">Mensagem:</td>
      <td>
      	<textarea name="msg" class="text" style="height: 100px;"></textarea>
      	<input type="hidden" name="para" value="solicitado">
      </td>
    </tr>
    
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" value="Enviar Solicitação" class="botton"></td>
    </tr>
  </tbody>
</table>
</form>
<?php
  }
?>
</body>
</html>
