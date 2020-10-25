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
  $primeira = test_input($_POST["primeira"]);
  $segunda = test_input($_POST["segunda"]);
  $terceira = test_input($_POST["terceira"]);
  $quarta = test_input($_POST["quarta"]);
  $quinta = test_input($_POST["quinta"]);
  
  if (empty($codigo)) {
		$Errprodutoborda = "style='border:2px solid #D90003;'";
		$ErrProdTexto = "<span style='font-size: 12px; color: #D90003;'>Código da Condição de Pagamento é Obrigatorio!</span>";
	} else {
		
	$le_condPagamento = DBRead ('condicoes_pagamentos', "WHERE cod_condicoes = '$codigo'", '*');

if (!is_array($le_condPagamento) && trim($le_condPagamento) == '') {
	
  $condicoes = array (
    'cod_condicoes' => $codigo,
	'primeira_condicao' => $primeira,
    'segunda_condicao' => $segunda,
    'terceira_condicao' => $terceira,
    'quarta_condicao' => $quarta,
    'quinta_condicao' => $quinta
  );
  
  $grava = DBCreate('condicoes_pagamentos', $condicoes);
  
  if ($grava) {
    echo "<script> alert('Condição de Pagamento Inserido com Sucesso!') </script>";
    echo "<script>location.href=('cadastrar_condicoes_pagamento.php')</script>";
  }
  else { 
    echo "Erro ao cadastrar Condição de Pagamento Código $codigo, tente novamente mais tarde!";
    exit;
    }
	} else {
			$Errprodutoborda = "style='border:2px solid #D90003;'";
			$CodTexto = "<span style='font-size: 12px; color: #D90003;'>Código da Condição de Pagamento já Existe!</span>";
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
<table width="60%" border="0" class="table">
  <tbody>
    <tr>
      <td height="42" align="center" valign="top"><span class="titulo">Cadastrar Condições de Pagamento</span></td>
    </tr>
    <tr>
      <td valign="baseline" style="padding-left: 50px;">
      Código: <br />
      <input type="text" name="codigo" class="cod" onkeypress='validate(event)' <?php echo $Errprodutoborda; ?>> 
		<?php echo $ErrProdTexto; echo $CodTexto; ?>
       </td>
    </tr>
    <tr>
    	<td height="31" valign="bottom" style="padding-left: 50px;">Parcelas em:</td>
    </tr>
    <tr>
      <td valign="middle" style="padding-left: 50px;">
      	<input type="text" name="primeira" class="cod" maxlength="3" style="width: 5%;" onkeypress='validate(event)'> Dias
        <input type="text" name="segunda" class="cod" maxlength="3" style="width: 5%; margin-left: 10px;" onkeypress='validate(event)'> Dias
        <input type="text" name="terceira" class="cod" maxlength="3" style="width: 5%; margin-left: 10px;" onkeypress='validate(event)'> Dias
        <input type="text" name="quarta" class="cod" maxlength="3" style="width: 5%; margin-left: 10px;" onkeypress='validate(event)'> Dias
        <input type="text" name="quinta" class="cod" maxlength="3" style="width: 5%; margin-left: 10px;" onkeypress='validate(event)'> Dias <br />
        <span style="font-size:10px;">*Não é obrigatório preencher todos os dias de pagamento!</span>
      </td>
    </tr>
    <tr>
      <td height="62" style="padding-left: 50px;" valign="bottom"><input type="submit" value="Cadastrar" class="botton"></td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>
