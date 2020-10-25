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

function documento(cpf){ 
   if(cpf.value.length == 3)
     cpf.value = cpf.value + '.';  //quando começamos a digitar, o script irá inserir um parênteses no começo do campo.
   if(cpf.value.length == 7)
      cpf.value = cpf.value + '.'; //quando o campo já tiver 3 caracteres (um parênteses e 2 números) o script irá inserir mais um parênteses, fechando assim o código de área.
 
 if(cpf.value.length == 11)
     cpf.value = cpf.value + '-'; //quando o campo já tiver 8 caracteres, o script irá inserir um tracinho, para melhor visualização do telefone.
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

function Password() {
  var pass = "";
  var chars = 8; //Número de caracteres da senha
  generate = function(chars) {
    for (var i= 0; i< chars;i++) {
      pass = pass + getRandomChar();
    }
    document.getElementById("senha").value = pass;
    //$("#senha").val(pass);
  }
  this.getRandomChar = function() {

  var ascii = [[48, 57],[97,122]];
  var i = Math.floor(Math.random()*ascii.length);
  return String.fromCharCode(Math.floor(Math.random()*(ascii[i][1]-ascii[i][0]))+ascii[i][0]);
  }
  
  generate(chars);
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
  $nome = test_input($_POST["nome"]);
  $cpf = test_input($_POST["cpf"]);
  $endereco = test_input($_POST["endereco"]);
  $fixo = test_input($_POST["fixo"]);
  $celular = test_input($_POST["celular"]);
  $email = test_input($_POST["email"]);
  $permissao = test_input($_POST["permissao"]);
  $login = test_input($_POST["login"]);
  $senha = test_input($_POST["senha"]);
   
    $usuario = array (
    'nome_usuario' => $nome,
    'cpf_usuario' => $cpf,
    'end_usuario' => $endereco,
    'fixo_usuario' => $fixo,
    'cel_usuario' => $celular,
    'email_usuario' => $email,
    'tipo_usuario' => $permissao,
    'login_usuario' => $login,
    'senha_usuario' => $senha
  );
  
  $grava = DBCreate('usuario', $usuario);
  
  
  if ($grava) {
    echo "<script> alert('$nome cadastrado com sucesso!') </script>";
    echo "<script>location.href=('cadastrar_usuario.php')</script>";
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
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Cadastrar Usuário</span></td>
    </tr>
    <tr>
      <td width="16%" align="right">Nome:</td>
      <td width="84%"><input type="text" name="nome" class="text" placeholder="Nome" onkeypress='validateChar(event)'></td>
    </tr>
    <tr>
      <td align="right">CPF:</td>
      <td><input type="text" name="cpf" class="cod" maxlength="14" placeholder="000.000.000-00" onkeypress="documento(this); validate(event)" ></td>
    </tr>
    <tr>
      <td align="right">Endereço:</td>
      <td><input type="text" name="endereco" class="text" placeholder="Endereço Completo"></td>
    </tr>
    <tr>
      <td align="right">Fixo:</td>
      <td>
      <input type="text" name="fixo" class="cod" maxlength="14" onkeypress="mascara(this); validate(event)" placeholder="(00) 0000-0000">
      Celular: <input type="text" name="celular" class="cod" maxlength="15" onkeypress="cel(this); validate(event)" placeholder="(00) 00000-0000">
      </td>
    </tr>
    <tr>
    <tr>
      <td align="right">E-mail:</td>
      <td><input type="text" name="email" class="text" placeholder="E-mail"></td>
    </tr>
      <td align="right">Permissão:</td>
      <td>
          <select name="permissao" class="select" style="width: 160px;">
            <option> -- </option>
            <option>Administrador</option>
            <option>Comum</option>
        </select>
      </td>
    </tr>
    <tr>
      <td align="right">Login:</td>
      <td><input type="text" name="login" class="text" placeholder="Login do sistema"></td>
    </tr>
    <tr>
      <td align="right">Senha:</td>
      <td><input type="text" name="senha" class="cod" id="senha" placeholder="Senha">
      <a href="javascript:Password(this);">Gerar Senha</a>
      </td>
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
