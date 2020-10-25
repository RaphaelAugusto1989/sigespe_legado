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
<br />
<table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 10px;">
	<tr>
		<td align="right">
        <?php
		require 'processos/config.php';
		require 'processos/connection.php';
		require 'processos/database.php';
			
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
  		//RECEBE DADOS DO FORMULARIO
  		$num_pesquisa = test_input($_POST["pesquisar"]);
		
		//LÊ DADOS DO BANCO
		$le_pesquisa = DBRead ('aviso_sigepe', "WHERE id_aviso = '$num_pesquisa'", '*');
		  
		}
		function test_input($data) {
   			$data = trim($data);
   			$data = stripslashes($data);
   			$data = htmlspecialchars($data);
   			return $data;
		}
		?>
          <form  action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
			Pesquisar: <input type="text" name="pesquisar" placeholder="Código" class="cod" style="margin-right:0;">
			<input type="submit" value="Pesquisar" style="height: 32px; padding: 0 5px 0 5px;">
		  </form>
		</td>
	</tr>
</table>
 <?php
 	if (empty($_POST['pesquisar'])) {
 ?>
 <p>Atendimento e Avisos ao Usuário</p>

	<a href="abrir_solicitacao" style="float: right;">+ Abrir Solicitação</a>
	
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" style="border: 0;">
	<tr class="linha">
		<td class="linha" width="13%" align="center"><strong>Código</strong></td>
		<td width="37%" class="linha"><strong>Assunto</strong></td>
   		<td width="31%" class="linha"><strong>Solicitante</strong></td>
    	<td width="19%" class="linha"><strong>Data da Solciticação</strong></td>
	</tr>
<?php
  $numreg = 15; // Quantos registros por página vai ser mostrado
  if (!isset($pg)) {
      $pg = 0;
  }
  $inicial = $_GET['pg'] * $numreg; 

   //LÊ DADOS DO BANCO
	$lojas = DBRead ("aviso_sigepe", "WHERE para = 'solicitante' ORDER BY id_aviso ASC LIMIT $inicial, $numreg", "*");
  
  // Serve para contar quantos registros você tem na seua tabela para fazer a paginação
  $sql = DBRead ("aviso_sigepe");

  // Quantidade de registros pra paginação
  $quant = count($sql);
  	if (empty($sql)) { 
        echo "<tr>
				<td colspan='3' align='center' style='font-size:16px; color:#AF0002; padding-top: 20px;'>NENHUM ATENDIMENTO OU AVISO!</td>
			  </tr>";
	} 

  foreach ($lojas as $lj) {
?>
	<tr onmouseover="ChangeColor(this, true);" onmouseout="ChangeColor(this, false);" onclick="DoNav('altera_linhas.php?id=<?php echo $lj['id_produto'];?>');">
		<td class="linha" align="center" valign="middle" style="border-left: 1px "><?php echo $lj['id_aviso'];?></td>
		<td class="linha espaco" valign="middle"><?php echo $lj['assunto_aviso']; ?></td>
	  	<td class="linha espaco" valign="middle"><?php echo $lj['usuario_sigepe']; ?></td>
	  	<td class="linha espaco" valign="middle"><?php echo $lj['data_solicitacao']; ?></td>
  	</tr>
<?php
	}
?>
</table>
<center>
<?php
  require "paginacao.php";
		} else {

		if (!empty($le_pesquisa)) {
?>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
	<tr class="linha">
		<td class="linha" width="13%" align="center"><strong>Código</strong></td>
		<td width="37%" class="linha"><strong>Assunto</strong></td>
   		<td width="31%" class="linha"><strong>Solicitante</strong></td>
    	<td width="19%" class="linha"><strong>Data da Solciticação</strong></td>
	</tr>
<?php
	foreach ($le_pesquisa as $lj) {
?>
	<tr onmouseover="ChangeColor(this, true);" onmouseout="ChangeColor(this, false);" onclick="DoNav('altera_linhas.php?id=<?php echo $lj['id_produto'];?>');" >
		<td class="linha" align="center" valign="middle"><?php echo $lj['id_aviso'];?></td>
		<td class="linha espaco" valign="middle"><?php echo $lj['assunto_aviso']; ?></td>
	  	<td class="linha espaco" valign="middle"><?php echo $lj['usuario_sigepe']; ?></td>
	  	<td class="linha espaco" valign="middle"><?php echo $lj['data_solicitacao']; ?></td>
  	</tr>
<?php
	}
?>
</table>
<?php
		} 
		else {
			echo "<br /><center style='color: red;'>
				NÃO EXISTE SOLICITAÇÃO DE ATENDIMENTO! <br />
				VERIFIQUE SE O CÓDIGO DO ATENDIMENTO ESTÁ CORRETO!
				</center>";
		}
	}
?>
</center>
</center>
</body>
</html>
