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
  $cod_produto = test_input($_POST["cod_produto"]);
  $fornecedor = test_input($_POST["fornecedor"]);
  $nome_produto = test_input($_POST["nome_produto"]);
 
  if (test_input($_POST["tipo_produto1"]) == true) {
    $tipo = test_input($_POST["tipo_produto1"]);
  }
    else {
      $tipo = test_input($_POST["tipo_produto2"]);
    }
	
	if (empty($cod_produto)) {
		$Errprodutoborda = "style='border:2px solid #D90003;'";
		$ErrProdTexto = "<span style='font-size: 12px; color: #D90003;'>Código do Produto é Obrigatorio!</span>";
	} else {
		
	$le_produto = DBRead ('produto', "WHERE cod_produto = '$cod_produto'", '*');

if (!is_array($le_produto) && trim($le_produto) == '') {
//não contém o pedido

  $produto = array (
    'cod_produto' => $cod_produto,
	'fornecedor_produto' => $fornecedor,
    'nome_produto' => $nome_produto,
    'tipo_produto' => $tipo
  );
  
  $grava = DBCreate('produto', $produto);
  
  
  if ($grava) {
    echo "<script> alert('Produto Nº $cod_produto Cadastrado com sucesso!') </script>";
    echo "<script>location.href=('cadastrar_linhas.php')</script>";
  }
  else { 
    echo "Erro ao cadastrar produto nº $cod_produto, tente novamente mais tarde!";
    exit;
   	}
	} else {
			$Errprodutoborda = "style='border:2px solid #D90003;'";
			$CodTexto = "<span style='font-size: 12px; color: #D90003;'>Código do Produto já Existe!</span>";
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
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Cadastrar Produto</span></td>
    </tr>
    
    <tr>
      <td width="11%" align="right">Código:</td>
      <td width="89%">
      	<input type="text" name="cod_produto" class="cod" onkeypress='validate(event)' <?php echo $Errprodutoborda; ?>> 
		<?php echo $ErrProdTexto; echo $CodTexto; ?>
      </td>
    </tr>
    <tr>
      <td align="right">Fornecedor:</td>
      <td>
          <select name="fornecedor" class="select" style="width: 71.5%;">
          <option value=" ">--</option>
        <?php
        //LÊ DADOS DO BANCO
        $fornecedor = DBRead ('fornecedor', 'ORDER BY nome_fornecedor ASC', 'nome_fornecedor');

        foreach ($fornecedor as $fr){
          
        ?>
            <option><?php echo $fr['nome_fornecedor']; ?></option>
        <?php
        }
        ?>
        </select>
      </td>
    </tr>
    <tr>
      <td align="right">Produto:</td>
      <td><input type="text" name="nome_produto" class="text" placeholder="Nome do Produto"></td>
    </tr>
    
    <tr>
      <td align="right">Modelo:</td>
      <td>
          <select name="tipo_produto1" class="select" style="width: 71.5%;">
              <option value=" "></option>
              <?php
        //LÊ DADOS DO BANCO
        $produto = DBRead ('produto', 'ORDER BY tipo_produto ASC', 'DISTINCT tipo_produto');

        foreach ($produto as $pd){
          
        ?>
            <option><?php echo $pd['tipo_produto']; ?></option>
        <?php
        }
        ?>
          </select>
      </td>
    </tr>
    <tr>
      <td align="right" valign="top"></td>
      <td><input type="text" name="tipo_produto2" class="text" placeholder="Outro tipo de Modelo"></td>
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
