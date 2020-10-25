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
  $id_cota = test_input($_POST["id_cotas"]);
  $loja = test_input($_POST["loja"]);
  $fornecedor = test_input($_POST["fornecedor"]);
  $mes_cota = test_input($_POST["mes"]);
  $ano_cota = test_input($_POST["ano"]);
  $cota_mensal = test_input($_POST["cota_mensal"]);
  $saldo_cota = test_input($_POST["saldo_cota"]);
  
  $cota_mensal = str_replace("." , "" , $cota_mensal ); // Primeiro tira os pontos
  $cota_mensal = str_replace(",",".", $cota_mensal); // Substitui a virgula pelo ponto
  
  $saldo_cota = str_replace("." , "" , $saldo_cota ); // Primeiro tira os pontos
  $saldo_cota = str_replace(",",".", $saldo_cota); // Substitui a virgula pelo ponto
  
  $saldo_cota_total = $cota_mensal - $saldo_cota; 
 
  $cad_cotas = array (
    'nome_loja' => $loja,
	'fornecedor' => $fornecedor,
    'mes_cota' => $mes_cota,
    'ano_cota' => $ano_cota,
    'cota_mensal' => $cota_mensal,
	'cota_saldo' => $saldo_cota_total
  );
  
  $altera = DBUpDate("cotas", $cad_cotas, "id_cotas = '".$id_cota."'");
  
  if ($altera) {
    echo "<script> alert('Alteração realizada com sucesso!') </script>";
    echo "<script>location.href=('visualiza_cotas.php')</script>";
  }
  else { 
    echo "Erro ao alterar cota, tente novamente mais tarde!";
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
  $cotas = DBRead ('cotas', "WHERE id_cotas = '$id'", '*');

    foreach ($cotas as $cts){
?>
<div class="voltar">
	<a href="javascript:history.back(1);">Voltar</a>
</div>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
<table width="100%" border="0" class="table">
  <tbody>
    <tr>
      <td height="42" colspan="2" align="center" valign="top">
      <span class="titulo">Alterar Cota</span>
        <input type="hidden" name="id_cotas" value="<?php echo $cts['id_cotas']; ?>">
      </td>
    </tr>
    <tr>
      <td width="16%" align="right"><label for="select">Loja:</label></td>
      <td width="84%">
      <select name="loja" class="select">
            <option><?php echo $cts['nome_loja']; ?></option>

      <?php
        //LÊ DADOS DO BANCO
        $cotas = DBRead ("lojas", "ORDER BY cod_loja ASC", "cod_loja, nome_loja");

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
          <option><?php echo $cts['fornecedor']; ?></option>
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
      <td align="right">Mês da Cota:</td>
      <td valign="baseline">
      <select name="mes" class="cod" style="width: 160px;">
      	<option><?php echo $cts['mes_cota']; ?></option>
      	<option>Janeiro</option>
        <option>Fevereiro</option>
        <option>Março</option>
        <option>Abril</option>
        <option>Maio</option>
        <option>Junho</option>
        <option>Julho</option>
        <option>Agosto</option>
        <option>Setembro</option>
        <option>Outubro</option>
        <option>Novembro</option>
        <option>Dezembro</option>
      </select>
      de 
      <select name="ano" class="cod" style="width: 80px;">
      	<option><?php echo $cts['ano_cota']; ?></option>
      	<?php
			// Calcula uma data daqui 8 dias e 1 mês
			$ano1 = strtotime("0 year");
			$ano2 = strtotime("+1 year");
			$ano3 = strtotime("+2 year");
			$ano4 = strtotime("+3 year");
			
			// Exibe o resultado
			echo '<option>'.date('Y', $ano1).'</option>';
			echo '<option>'.date('Y', $ano2).'</option>';
			echo '<option>'.date('Y', $ano3).'</option>';
			echo '<option>'.date('Y', $ano4).'</option>';
		?>
      </select>
      </td>
    </tr>
    <tr>
      <td align="right">Cota Mensal.:</td>
      <td><input type="text" name="cota_mensal" class="cod" onKeyPress="return(MascaraMoeda(this,'.',',',event))" value="<?php echo number_format($cts['cota_mensal'], 2, ',', '.'); ?>"></td>
    </tr>
    <tr>
      <td align="right">Saldo da Cota:</td>
      <td><input type="text" name="saldo_cota" class="cod" onKeyPress="return(MascaraMoeda(this,'.',',',event))" value="<?php echo number_format($cts['cota_saldo'], 2, ',', '.');?>" readonly></td>
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
