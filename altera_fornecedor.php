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

function valida_form (){
var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
if(!filter.test(document.getElementById("email").value)){
alert('Por favor, digite o email corretamente');
document.getElementById("email").focus();
return false
}
}
  
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
</script>
</head>

<body>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

//RECEBE VARIAVEL ID 
$id = $_GET['id'];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
  //RECEBE DADOS DO FORMULARIO
  $id_fornecedor = test_input($_POST["id_fornecedor"]);
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
  
 $altera = DBUpDate('fornecedor', $fornecedor, 'id_fornecedor="'.$id_fornecedor.'"');
  
 if ($altera) {
   echo "<script> alert('Alteração realizada com sucesso!') </script>";
   echo "<script>location.href=('visualiza_fornecedor.php')</script>";
  }
  else { 
    echo "Erro ao alterar dados do Fornecedor, tente novamente mais tarde!";
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
  $le_fornecedor = DBRead ('fornecedor', "WHERE id_fornecedor = '$id'", 'id_fornecedor, cnpj_fornecedor, nome_fornecedor, fone_fornecedor, nome_contato, email_fornecedor');

    foreach ($le_fornecedor as $fnd){
?>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" onsubmit="return valida_form(this)">
<div class="voltar">
	<a href="javascript:history.back(1);">Voltar</a>
</div>
<table border="0" cellpadding="0" cellspacing="0" class="table">
  <tbody>
    <tr>
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Alterar Fornecedor</span></td>
    </tr>
    <tr>
      <td width="16%" align="right" valign="middle">CNPJ: 
      <input type="hidden" name="id_fornecedor" value="<?php echo $fnd['id_fornecedor']; ?>"></td>
      <td width="84%"><input type="text" name="cnpj_fornecedor" class="text" style=" width: 30%;" maxlength="18" onkeypress="cnpj(this)" placeholder="00.000.000/0000-00"  value="<?php echo $fnd['cnpj_fornecedor']; ?>"></td>
    </tr>
    <tr>
      <td width="16%" align="right" valign="top">Fornecedor:
      </td>
      <td width="84%"><input type="text" name="nome_fornecedor" class="text" value="<?php echo $fnd['nome_fornecedor']; ?>"></td>
    </tr>
    <tr>
      <td align="right" valign="top">Telefone:</td>
      <td><input type="text" name="fone" class="text" maxlength="15" onkeypress="cel(this)" placeholder="(99) 99999-9999"  value="<?php echo $fnd['fone_fornecedor']; ?>"></td>
    </tr>
    <tr>
      <td align="right" valign="top">Contato:</td>
      <td><input type="text" name="nome_contato" class="text" placeholder="Nome" value="<?php echo $fnd['nome_contato']; ?>"></td>
    </tr>
    <tr>
      <td align="right" valign="top">E-mail:</td>
      <td><input type="text" name="email" class="text" id="email" placeholder="E-mail" value="<?php echo $fnd['email_fornecedor']; ?>"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" value="Alterar" class="botton"></td>
    </tr>
  </tbody>
</table>
</form>
<?php
  }
?>
</body>
</html>
