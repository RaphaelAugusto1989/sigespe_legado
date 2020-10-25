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
<form action="pagina_relatorio_pedidos.php" method="post" target="_blank">
  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
  	<tbody>
    	<tr>
      		<td height="42" colspan="4" align="center" valign="top">
      		<span class="titulo">Relatório de Entrega de Pedidos</span>
      		</td>
    	</tr>
    	<tr>
    		<td height="42" width="48%" align="right" style="padding-right: 20px;">
      		Por Loja:  
      		<select name="loja" class="select" style="width: 75%;">
              <option value="todos"> Todos </option>
        <?php
        	require 'processos/config.php';
  		  	require 'processos/connection.php';
  		  	require 'processos/database.php';
        //LÊ DADOS DO BANCO
        $pedido = DBRead ('pedidos', 'ORDER BY num_pedido ASC', 'DISTINCT nome_loja');

        foreach ($pedido as $pd){
          
        ?>
            <option><?php echo $pd['nome_loja']; ?></option>
        <?php
        }
        ?>
          </select>
		</td>
        <td width="52%"> 
        Por Fornecedor: 
        <select name="fornecedor" class="select" style="width: 70%;">
              <option value="todos"> Todos </option>
        <?php
        //LÊ DADOS DO BANCO
        $pedido = DBRead ('pedidos', 'ORDER BY num_pedido ASC', 'DISTINCT nome_fornecedor');

        foreach ($pedido as $pd){
          
        ?>
            <option><?php echo $pd['nome_fornecedor']; ?></option>
        <?php
        }
        ?>
          </select>
        </td>
    </tr>
	<tr>
        <td height="54" colspan="4" style="padding-left: 90px;">
      		 Data de entrega de: 
             <input type="date" name="de"  class="cod" maxlength="10" placeholder="dd/mm/aaaa" onkeyup="formatar('##/##/####', this, event)" style="width: 30%;"> 
      		 <span style="margin-left: 20px;">até:</span> 
             <input type="date" name="ate"  class="cod" maxlength="10" placeholder="dd/mm/aaaa" onkeyup="formatar('##/##/####', this, event)" style="width: 30%;"> 
      		</td>
    	</tr>
    	<tr>
      		<td height="42" colspan="4" align="center" valign="top">
      		<input type="submit" value="Visualizar" class="botton">
      		</td>
    	</tr>
  	</tbody>
  </table>
</form>
</body>
</html>
