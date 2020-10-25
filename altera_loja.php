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
<center><h2> Alterar Loja </h2></center>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

//RECEBE VARIAVEL ID 
$id = $_GET['id'];


if ($_SERVER["REQUEST_METHOD"] == "POST") {
		
	//RECEBE DADOS DO FORMULARIO
	$id_lj = test_input($_POST["id_lj"]);
	$codigo = test_input($_POST["codigo"]);
	$loja = test_input($_POST["loja"]);
	$telefone = test_input($_POST["telefone"]);
	$gerente = test_input($_POST["gerente"]);
	$endereco = test_input($_POST["endereco"]);


	//GRAVA DADOS NO BD
	$lojas = array (
		'cod_loja' => $codigo,
		'nome_loja' => $loja,
		'fone_loja' => $telefone,
		'nome_gerente' => $gerente,
		'end_loja' => $endereco
	);
	
	$altera = DBUpDate('lojas', $lojas, "id_lojas = '".$id_lj."'");
	
	if ($altera) {
		echo "<script> alert('Alteração realizada com sucesso!') </script>";
		echo "<script>location.href=('visualiza_loja.php')</script>";
	}
	else { 
		echo "Erro ao alterar dados da loja, tente novamente mais tarde!";
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
	$lojas = DBRead ('lojas', "WHERE id_lojas = '$id'", 'id_lojas, cod_loja, nome_loja, fone_loja, nome_gerente, end_loja');

		foreach ($lojas as $lj){
	?>

<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
<div class="voltar">
	<a href="javascript:history.back(1);">Voltar</a>
</div>
<table width="100%" border="0" class="table">
  <tbody>
    <tr>
      <td width="11%" align="right" class="espaco">Código: <input type="hidden" name="id_lj" value="<?php echo $lj['id_lojas']; ?>"> </input> </td>
      <td width="89%"><input type="text" name="codigo" class="cod" readonly value="<?php echo $lj['cod_loja']; ?>"></td>
    </tr>
    <tr>
      <td align="right">Loja:</td>
      <td><input type="text" name="loja" class="text" placeholder="Loja" value="<?php echo $lj['nome_loja']; ?>"></td>
    </tr>
    <tr>
      <td align="right">Telefone:</td>
      <td><input type="text" name="telefone" class="text" maxlength="15" onkeypress="cel(this)" placeholder="(99) 99999-9999"  value="<?php echo $lj['fone_loja']; ?>"></td>
    </tr>
    <tr>
      <td align="right">Gerente:</td>
      <td><input type="text" name="gerente" class="text" placeholder="Nome do Gerente" value="<?php echo $lj['nome_gerente']; ?>"></td>
    </tr>
    <tr>
      <td align="right">Endereço:</td>
      <td><input type="text" name="endereco" class="text" placeholder="Endereço da Loja"  value="<?php echo $lj['end_loja']; ?>"></td>
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
