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
  $id_cond = test_input($_POST["id_cond"]);
  $primeira = test_input($_POST["primeira"]);
  $segunda = test_input($_POST["segunda"]);
  $terceira = test_input($_POST["terceira"]);
  $quarta = test_input($_POST["quarta"]);
  $quinta = test_input($_POST["quinta"]);
  

	$le_condPagamento = DBRead ('condicoes_pagamentos', "WHERE cod_condicoes = '$codigo'", '*');

	
  $condicoes = array (
	'primeira_condicao' => $primeira,
    'segunda_condicao' => $segunda,
    'terceira_condicao' => $terceira,
    'quarta_condicao' => $quarta,
    'quinta_condicao' => $quinta
  );
  
  $altera = DBUpDate("condicoes_pagamentos", $condicoes, "id_condicoes = '".$id_cond."'");
  
  if ($altera) {
    echo "<script> alert('Alteração realizada com sucesso!') </script>";
    echo "<script>location.href=('visualiza_condicoes_pagamento.php')</script>";
  }
  else { 
    echo "Erro ao alterar condição de pagamento, tente novamente mais tarde!";
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
 $le_cond = DBRead ("condicoes_pagamentos", "WHERE id_condicoes = '$id'", "*");

    foreach ($le_cond as $cond){
?>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
<div class="voltar">
	<a href="javascript:history.back(1);">Voltar</a>
</div>
<table width="60%" border="0" class="table">
  <tbody>
    <tr>
      <td height="42" align="center" valign="top"><span class="titulo">Alterar Condição de Pagamento</span></td>
    </tr>
    <tr>
      <td valign="baseline" style="padding-left: 50px;">
      Código: <br /> <input type="hidden" name="id_cond" value="<?php echo $cond['id_condicoes']; ?>">
      <input type="text" name="codigo" readonly value="<?php echo $cond['cod_condicoes'];?>" class="cod"<?php echo $Errprodutoborda; ?>> 
		<?php echo $ErrProdTexto; echo $CodTexto; ?>
       </td>
    </tr>
    <tr>
    	<td height="31" valign="bottom" style="padding-left: 50px;">Parcelas em:</td>
    </tr>
    <tr>
      <td valign="middle" style="padding-left: 50px;">
      	<input type="text" name="primeira" class="cod" maxlength="3" style="width: 5%;" value="<?php echo $cond['primeira_condicao'];?>"> Dias
        <input type="text" name="segunda" class="cod" maxlength="3" style="width: 5%; margin-left: 10px;" value="<?php echo $cond['segunda_condicao'];?>"> Dias
        <input type="text" name="terceira" class="cod" maxlength="3" style="width: 5%; margin-left: 10px;" value="<?php echo $cond['terceira_condicao'];?>"> Dias
        <input type="text" name="quarta" class="cod" maxlength="3" style="width: 5%; margin-left: 10px;" value="<?php echo $cond['quarta_condicao'];?>"> Dias
        <input type="text" name="quinta" class="cod" maxlength="3" style="width: 5%; margin-left: 10px;" value="<?php echo $cond['quinta_condicao'];?>"> Dias <br />
        <span style="font-size:10px;">*Não é obrigatório preencher todos os dias de pagamento!</span>
      </td>
    </tr>
    <tr>
      <td height="62" style="padding-left: 50px;" valign="bottom"><input type="submit" value="Alterar" class="botton"></td>
    </tr>
  </tbody>
</table>
</form>
<?php
	}
?>
</body>
</html>
