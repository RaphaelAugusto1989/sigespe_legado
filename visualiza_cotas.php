<?php  require "sessao_time.php"; ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sem título</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
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
<center><h2> Cotas Cadastradas </h2></center>
<br />

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
	<tr class="linha">
		<td class="linha" width="20%" align="center"><b>Data da Cota</b></td>
		<td class="linha"><b>Nome da Loja</b></td>
    <td width="10%" align="center" class="linha"></td>
	</tr>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

  $numreg = 15; // Quantos registros por página vai ser mostrado
  if (!isset($pg)) {
      $pg = 0;
  }
  $inicial = $_GET['pg'] * $numreg; 

	//LÊ DADOS DO BANCO
	$cotas = DBRead ("cotas", "ORDER BY mes_cota AND ano_cota ASC LIMIT $inicial, $numreg", "id_cotas, nome_loja, mes_cota, ano_cota");

  // Serve para contar quantos registros você tem na seua tabela para fazer a paginação
  $sql = DBRead ("cotas");

  // Quantidade de registros pra paginação
  $quant = count($sql);
  	if (empty($sql)) { 
        echo "<tr>
				<td colspan='3' align='center' style='font-size:16px; color:#AF0002; padding-top: 20px;'>NENHUMA COTA CADASTRADA!</td>
			  </tr>";
	} 

		foreach ($cotas as $ct){
		
		?>
	<tr onmouseover="ChangeColor(this, true);" onmouseout="ChangeColor(this, false);">
		<td class="linha" align="center" valign="middle" onclick="DoNav('altera_cota.php?id=<?php echo $ct['id_cotas'];?>');">
      <?php echo $ct['mes_cota'].' de '.$ct['ano_cota'];?>
    </td>
		<td class="linha espaco" valign="middle" onclick="DoNav('altera_cota.php?id=<?php echo $ct['id_cotas'];?>');">
      <?php echo $ct['nome_loja']; ?>
    </td>
	  <td class="linha espaco" valign="middle">
      <span class="excluir">
        <a href="javascript:aviso('<?=$ct['id_cotas'];?>');">Excluir</a>
      </span>
    </td>
  </tr>

<script language= 'javascript'>
<!--
function aviso(id) {
  if (confirm ("Deseja realmente excluir esta cota?")) {
      window.location.href = "processos/bd_delet_cotas.php?id="+id;
  }
  else {
    location.href=('visualiza_cotas.php')
  }
}
//-->
</script>
<?php
	}
?>
</table>
<center>
<?php
  require "paginacao.php";
?>
</center>
</body>
</html>