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

$id = $_GET['id'];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
  //RECEBE DADOS DO FORMULARIO
  $id_user = test_input($_POST["id_user"]);
  $senha_nova = test_input($_POST["senha_nova"]);
  $confirmar_senha = test_input($_POST["confirmar_senha"]);
  
      
  if ($senha_nova == $confirmar_senha) {
       
      $senha = array ('senha_usuario' => $senha_nova);
  
      $altera = DBUpDate('usuario', $senha, 'id_usuario="'.$id_user.'"');
                  
      if ($altera) {
        echo "<script> alert('Alteração realizada com sucesso!') </script>";
        echo "<script>location.href=('dados_usuario.php')</script>";
      }
        else { 
          echo "Erro ao alterar sua senha, tente novamente mais tarde!";
          exit;
        }
  } 
    else {
        echo "<script> alert('Senhas não conferem, digite novamente!') </script>";
        echo "<script>location.href=('alterar_senha_usuario.php?id=".$id_user."')</script>";
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
<div class="voltar">
    <a href="javascript:history.back(1);">Voltar</a>
</div>
<table border="0" cellpadding="0" cellspacing="0" class="table" width="40%">
  <tbody>
    <tr>
      <td height="42" align="center" valign="top"><span class="titulo">Alterar Senha</span></td>
    </tr>
    <tr>
      <td align="center">
      <input type="hidden" name="id_user" value="<?php echo $id; ?>">
          <span style="color: red;"><?php echo @$err_senha; ?></span> <br />
          <input type="password" name="senha_nova" class="senha_text" placeholder="Nova Senha">
      </td>
    </tr>
    <tr>
      <td align="center">
          <input type="password" name="confirmar_senha" class="senha_text" placeholder="Confirmar Nova Senha">
      </td>
    </tr>
    <tr>
      <td  align="center" style=" padding-top: 10px;"><input type="submit" value="Alterar" class="botton"></td>
    </tr>
  </tbody>
</table>
</form>
<?php
  //}
?>
</body>
</html>
