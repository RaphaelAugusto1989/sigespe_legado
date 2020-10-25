<?php  require "sessao_time.php"; ?>
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


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
  //RECEBE DADOS DO FORMULARIO
  $cnpj = test_input($_POST["cnpj_fornecedor"]);  
  $nome = test_input($_POST["nome_fornecedor"]);
  $fone = test_input($_POST["fone"]);
  $contato = test_input($_POST["nome_contato"]);
  $email = test_input($_POST["email"]);
 
    $fornecedor = array (
	'cnpj_fornecedor' => $cnpj,
    'nome_fornecedor' => $nome,
    'fone_fornecedor' => $fone,
    'nome_contato' => $contato,
    'email_fornecedor' => $email
  );
  
  $grava = DBCreate('fornecedor', $fornecedor);
  
  
  if ($grava) {
    echo "<script> alert('Fornecedor $nome cadastrado com sucesso!') </script>";
    echo "<script>location.href=('cadastrar_fornecedor.php')</script>";
  }
  else { 
    echo "Erro ao cadastrar $nome, tente novamente mais tarde!";
    exit;
    }
}
  function test_input($data) {
      $data = trim($data);
      $data = stripslashes($data);
      $data = htmlspecialchars($data);
      return $data;
  }
?>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" onsubmit="return valida_form(this)">
<table border="0" cellpadding="0" cellspacing="0" class="table">
  <tbody>
    <tr>
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Cadastrar Fornecedor</span></td>
    </tr>
    <tr>
      <td width="16%" align="right" valign="middle">CNPJ:</td>
      <td width="84%"><input type="text" name="cnpj_fornecedor" class="text" style=" width: 30%;" maxlength="18" onkeypress="cnpj(this); validate(event)" placeholder="00.000.000/0000-00" ></td>
    </tr>
    <tr>
      <td width="16%" align="right" valign="middle">Fornecedor:</td>
      <td width="84%"><input type="text" name="nome_fornecedor" class="text" onkeypress='validateChar(event)'></td>
    </tr>
    <tr>
      <td align="right" valign="middle">Telefone:</td>
      <td><input type="text" name="fone" class="text" maxlength="15" onkeypress="mascara(this); validate(event)" placeholder="(99) 99999-9999"></td>
    </tr>
    <tr>
      <td align="right" valign="middle">Contato:</td>
      <td><input type="text" name="nome_contato" class="text" placeholder="Nome"></td>
    </tr>
    <tr>
      <td align="right" valign="middle">E-mail:</td>
      <td><input type="text" name="email" class="text" id="email" placeholder="E-mail"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" value="Cadastrar" class="botton"></td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>
