<?php
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
      
function mascara(telefone){ 
   if(telefone.value.length == 0)
     telefone.value = '(' + telefone.value; //quando começamos a digitar, o script irá inserir um parênteses no começo do campo.
   if(telefone.value.length == 3)
      telefone.value = telefone.value + ') '; //quando o campo já tiver 3 caracteres (um parênteses e 2 números) o script irá inserir mais um parênteses, fechando assim o código de área.
 
 if(telefone.value.length == 9)
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

$id = $_SESSION ["id_user"];
//LÊ DADOS DO BANCO
  $dados= DBRead ('usuario', "WHERE id_usuario = '$id'", 'nome_usuario, cpf_usuario, end_usuario, fixo_usuario, cel_usuario, email_usuario, login_usuario');

    foreach ($dados as $dd){
	
?>

<form action="#" method="post" onsubmit="return valida_form(this)">
<table border="0" cellpadding="0" cellspacing="0" class="table">
  <tbody>
    <tr>
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Meus Dados</span></td>
    </tr>
    <tr>
      <td width="16%" align="right" style="border-bottom: 1px solid #7A7A7A; border-top: 1px solid #7A7A7A;"><b>Nome:</b></td>
      <td width="84%" style="border-bottom: 1px solid #7A7A7A; border-top: 1px solid #7A7A7A;"><?php echo $dd['nome_usuario']; ?></td>
    </tr>
    <tr>
      <td align="right" style="border-bottom: 1px solid #7A7A7A;"><b>CPF:</b></td>
      <td style="border-bottom: 1px solid #7A7A7A;"><?php echo $dd['cpf_usuario']; ?></td>
    </tr>
    <tr>
      <td align="right" style="border-bottom: 1px solid #7A7A7A;"><b>Endereço:</b></td>
      <td style="border-bottom: 1px solid #7A7A7A;"><?php echo $dd['end_usuario']; ?></td>
    </tr>
    <tr>
      <td align="right" style="border-bottom: 1px solid #7A7A7A;"><b>Fixo:</b></td>
      <td style="border-bottom: 1px solid #7A7A7A;"><?php echo $dd['fixo_usuario']; ?></td>
    </tr>
    <tr>
      <td align="right" style="border-bottom: 1px solid #7A7A7A;"><b>Celular:</b></td>
      <td style="border-bottom: 1px solid #7A7A7A;"><?php echo $dd['cel_usuario']; ?></td>
    </tr>
    <tr>
      <td align="right" style="border-bottom: 1px solid #7A7A7A;"><b>E-mail:</b></td>
      <td style="border-bottom: 1px solid #7A7A7A;"><?php echo $dd['email_usuario']; ?></td>
    </tr>
    <tr>
      <td align="right" style="border-bottom: 1px solid #7A7A7A;"><b>Login:</b></td>
      <td style="border-bottom: 1px solid #7A7A7A;"><?php echo $dd['login_usuario']; ?></td>
    </tr>
    <tr>
      <td colspan="2" style="padding-left: 100px;" class="senhas"> <a href="alterar_dados_usuario.php?id=<?php echo $id;?>">Alterar Dados</a> <a href="alterar_senha_usuario.php?id=<?php echo $id;?>">Alterar Senha</a></td>
    </tr>
  </tbody>
</table>
</form>
<?php
  }
?>
</body>
</html>
