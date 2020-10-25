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
  $id_produto = test_input($_POST["id_produto"]);
  $cod_produto = test_input($_POST["cod_produto"]);
  $fornecedor_produto = test_input($_POST["fornecedor"]);
  $nome_produto = test_input($_POST["nome_produto"]);
  $tipo_produto = test_input($_POST["tipo_produto"]);

  $produto = array (
    'cod_produto' => $cod_produto,
	'fornecedor_produto' => $fornecedor_produto,
    'nome_produto' => $nome_produto,
    'tipo_produto' => $tipo_produto
  );
  
  $altera = DBUpDate('produto', $produto, 'id_produto="'.$id_produto.'"');
  
  if ($altera) {
   echo "<script> alert('Alteração realizada com sucesso!') </script>";
   echo "<script>location.href=('visualiza_linhas.php')</script>";
  }
  else { 
    echo "Erro ao alterar dados do pedido, tente novamente mais tarde!";
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
  $le_produto = DBRead ('produto', "WHERE id_produto = '$id'", 'id_produto, cod_produto, fornecedor_produto, nome_produto, tipo_produto');

    foreach ($le_produto as $pdt){
?>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
<div class="voltar">
	<a href="javascript:history.back(1);">Voltar</a>
</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
  <tbody>
    <tr>
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Alterar Produto</span></td>
    </tr>
    <tr>
      <td width="11%" align="right" valign="top">Código: 
        <input type="hidden" name="id_produto" value="<?php echo $pdt['id_produto']; ?>">
      </td>
      <td width="89%"><input type="text" name="cod_produto" class="cod"  readonly="readonly" value="<?php echo $pdt['cod_produto']; ?>"></td>
    </tr>
    <tr>
      <td align="right">Fornecedor:</td>
      <td>
          <select name="fornecedor" class="select" style="width: 71.5%;">
          <option><?php echo $pdt['fornecedor_produto']; ?></option>
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
      <td align="right" valign="top">Produto:</td>
      <td><input type="text" name="nome_produto" class="text" placeholder="Nome do Produto" value="<?php echo $pdt['nome_produto']; ?>"></td>
    </tr>
    <tr>
      <td align="right" valign="top">Modelo:</td>
      <td>
          <select name="tipo_produto" class="select" style="width: 71.5%;">
              <option><?php echo $pdt['tipo_produto']; ?></option>
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
