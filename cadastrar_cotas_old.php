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


  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
  //RECEBE DADOS DO FORMULARIO
  $loja = test_input($_POST["loja"]);
  $fornecedor = test_input($_POST["fornecedor"]);
  $data = test_input($_POST["data"]);
  $quinzena = test_input($_POST["quinzena"]);
  $cota_comp = test_input($_POST["cota_comp"]);
  $cota_entrada = test_input($_POST["cota_entrada"]);
  
  $cota_comp = str_replace("." , "" , $cota_comp ); // Primeiro tira os pontos
  $cota_comp = str_replace(",",".", $cota_comp); // Substitui a virgula pelo ponto
  
  $cota_entrada = str_replace("." , "" , $cota_entrada ); // Primeiro tira os pontos
  $cota_entrada = str_replace(",",".", $cota_entrada); // Substitui a virgula pelo ponto

  $cad_cotas = array (
    'nome_loja' => $loja,
	'fornecedor' => $fornecedor,
    'data_cota' => $data,
    'quinzena' => $quinzena,
    'cota_comp' => $cota_comp,
    'cota_entrada' => $cota_entrada
  );
  
  $grava = DBCreate('cotas', $cad_cotas);
  
  
  if ($grava) {
    echo "<script> alert('Cota inserida com sucesso!') </script>";
    echo "<script>location.href=('cadastrar_cotas.php')</script>";
  }
  else { 
    echo "Erro ao cadastrar cota, tente novamente mais tarde!";
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
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
<table width="100%" border="0" class="table">
  <tbody>
    <tr>
      <td height="42" colspan="2" align="center" valign="top"><span class="titulo">Inserir Cotas</span></td>
    </tr>
    <tr>
      <td width="16%" align="right"><label for="select">Loja:</label></td>
      <td width="84%">
      <select name="loja" class="select">
            <option value=" ">--</option>

      <?php
        //LÊ DADOS DO BANCO
        $cotas = DBRead ('lojas', 'ORDER BY cod_loja ASC', 'cod_loja, nome_loja');

        foreach ($cotas as $ct){
          
        ?>
            <option><?php echo $ct['cod_loja']; ?> - <?php echo $ct['nome_loja']; ?></option>
        <?php
        }
        ?>
        </select>
        </td>
    </tr>
    <tr>
      <td align="right">Fornecedor:</td>
      <td>
          <select name="fornecedor" class="select">
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
      <td align="right">Data:</td>
      <td valign="baseline"><input type="text" name="data" class="cod" maxlength="7" placeholder="mm/aaaa" onkeyup="formatar('##/####', this, event)"> <span class="exemplo">mm/aaaa</span></td>
    </tr>
    <tr>
      <td align="right">Quinzena:</td>
      <td>
        <select name="quinzena" class="select" style="width: 160px;">
            <option value="1ª Quinzena">1ª Quinzena</option>
            <option value="2ª Quinzena">2ª Quinzena</option>
        </select>
      </td>
    </tr>
    <tr>
      <td align="right">Cota Inicial:</td>
      <td><input type="text" name="cota_comp" class="cod" onKeyPress="return(MascaraMoeda(this,'.',',',event))"></td>
    </tr>
    <tr>
      <td align="right">Cota Inserida:</td>
      <td><input type="text" name="cota_entrada" class="cod" onKeyPress="return(MascaraMoeda(this,'.',',',event))"></td>
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
