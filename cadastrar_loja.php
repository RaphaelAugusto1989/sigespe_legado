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
	$codigo = test_input($_POST["codigo"]);
	$loja = test_input($_POST["loja"]);
	$telefone = test_input($_POST["telefone"]);
	$gerente = test_input($_POST["gerente"]);
	$endereco = test_input($_POST["endereco"]);

if (empty($codigo)) {
		$Errborda = "style='border:2px solid #D90003;'";
		$ErrTexto = "<span style='font-size: 12px; color: #D90003;'>Código da Loja é Obrigatorio!</span>";
	} else {
	//LÊ DADOS DO BANCO
	$cod_loja = DBRead ("lojas", "WHERE cod_loja = '$codigo'");	
	
	if (!is_array($cod_loja) && trim($cod_loja) == '') {
	//Nçao contém a Loja
	$lojas = array (
		'cod_loja' => $codigo,
		'nome_loja' => $loja,
		'fone_loja' => $telefone,
		'nome_gerente' => $gerente,
		'end_loja' => $endereco
	);
	
	$grava = DBCreate('lojas', $lojas);
	
	
	if ($grava) {
		echo "<script> alert('$loja cadastrada com sucesso!') </script>";
		echo "<script>location.href=('cadastrar_loja.php')</script>";
	}
	else { 
		echo "Erro ao cadastrar a loja, tente novamente mais tarde!";
		exit;
		}
	} else {
		$Errborda = "style='border:2px solid #D90003;'";
		$ErrCodTexto = "<span style='font-size: 12px; color: #D90003;'>Código da Loja já Existente!</span>";
	}
}
}
	function test_input($data) {
   		$data = trim($data);
   		$data = stripslashes($data);
   		$data = htmlspecialchars($data);
   		return $data;
	}
?>

<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
  <tbody>
  <tr>
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Cadastrar Loja</span></td>
    </tr>
    <tr>
      <td width="11%" align="right" valign="top" class="espaco">Código:</td>
      <td width="89%">
      	<input type="text" name="codigo"  onkeypress='validate(event)' class="cod"<?php echo $Errborda; ?>>
      	<?php echo $ErrTexto;?> <?php echo $ErrCodTexto; ?>
      </td>
    </tr>
    <tr>
      <td align="right" valign="top">Loja:</td>
      <td><input type="text" name="loja" class="text" placeholder="Loja"></td>
    </tr>
    <tr>
      <td align="right" valign="top">Telefone:</td>
      <td><input type="text" name="telefone" class="text" maxlength="15" onkeypress="mascara(this); validate(event)" placeholder="(99) 99999-9999"></td>
    </tr>
    <tr>
      <td align="right" valign="top">Gerente:</td>
      <td><input type="text" name="gerente" class="text" placeholder="Nome do Gerente" onkeypress='validateChar(event)'></td>
    </tr>
    <tr>
      <td align="right" valign="top">Endereço:</td>
      <td><input type="text" name="endereco" class="text" placeholder="Endereço da Loja"></td>
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
