<?php
  session_start();
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Relatório</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script>
function Impressao(preVisualizar) {
  var CorpoMensagem = document.body.innerHTML;
  document.body.innerHTML = ImprimirConteudo.innerHTML;
  if( preVisualizar ) 
  {
    PreVisualizar();
  } 
  else 
  {
    window.print();
  }
  document.body.innerHTML = CorpoMensagem;
}
 
function PreVisualizar() {
  try   {
     //Utilizando o componente WebBrowser1 registrado no MS Windows Server 2000/2003 ou XP/Vista
     var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>'; 
     document.body.insertAdjacentHTML('beforeEnd', WebBrowser); 
     WebBrowser1.ExecWB( 7, 1 ); 
     WebBrowser1.outerHTML = ""; 
  } 
  catch(e) 
  {
    alert("Para visualizar a impressão você precisa habilitar o uso de controles ActiveX na página.");
    return;
  }
}
</script>
</head>

<body>
<?php
  date_default_timezone_set('America/Sao_Paulo');
  $data = date("d/m/Y");
  $hora = date("H:i:s");
?>
<div id="imprimir">
  
  <a href="javascript:Impressao( false );"> <img src="imagens/impressora.png" width="2%" class="imprimir">  Imprimir</a>
</div>
<div id="ImprimirConteudo">
<div id="folha">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody>
    <tr>
      <td height="57" colspan="3">
      <div style="width: 200px; float:left;">
	      <img src="imagens/logo.png" width="70%" height="46" style=" margin: 10px;">
      </div>
      <div style="float: right; width:70%; text-align:center; margin-top: 15px;">
      	<p><b>Sistema Gerenciador de Produtos e Estoque</b></p>
        <p><?php echo $_SESSION ["nome"]; ?></p>
      </div>
      </td>
      <td width="217" valign="middle">
      <b>Data:</b> <?php echo $data; ?> <br />
      <b>Hora:</b>  <?php echo $hora;?>
      </td>
    </tr>
    <tr>
      <td colspan="3" align="center" valign="middle">
      	
      </td>
    </tr>
    <tr>
      <td height="56" colspan="8" align="center" valign="middle">
      		<b class="titulo_relatorio">Relatório de Produtos</b>
      </td>
    </tr>
    <tr>
      <td width="95" align="center" style="padding: 5px;"><b>Código:</b></td>
      <td width="181" style="padding: 5px;"><b>Fornecedor:</b></td>
      <td width="417" style="padding: 5px;"><b>Produto:</b></td>
      <td width="217" style="padding: 5px;"><b>Tipo de Produto:</b></td>
    </tr>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

  //RECEBE DADOS DO FORMULARIO
  $nome_produto = $_POST["nome_produto"];
  $tipo_produto = $_POST["tipo_produto"];
  $fornecedor_produto = $_POST["fornecedor_produto"];
  //$de = date('Y-m-d', strtotime($_POST["de"]));
  //$ate = date('Y-m-d', strtotime($_POST["ate"]));
  	
  
  
  	if ($nome_produto == 'todos') 
  		$produto = DBRead ("produto", "WHERE (tipo_produto = '$tipo_produto') AND (fornecedor_produto = '$fornecedor_produto')", "cod_produto, fornecedor_produto, nome_produto, tipo_produto");
	
	if ($tipo_produto == 'todos') 
  		$produto = DBRead ("produto", "WHERE (nome_produto = '$nome_produto') AND (fornecedor_produto = '$fornecedor_produto')", "cod_produto, fornecedor_produto, nome_produto, tipo_produto");

	if ($fornecedor_produto == 'todos') 
  		$produto = DBRead ("produto", "WHERE (nome_produto = '$nome_produto') AND (tipo_produto = '$tipo_produto')", "cod_produto, fornecedor_produto, nome_produto, tipo_produto");

	if ($nome_produto == 'todos' AND $tipo_produto == 'todos') 
  		$produto = DBRead ("produto", "WHERE (fornecedor_produto = '$fornecedor_produto')", "cod_produto, fornecedor_produto, nome_produto, tipo_produto");

	if ($tipo_produto == 'todos' AND $fornecedor_produto == 'todos') 
  		$produto = DBRead ("produto", "WHERE (nome_produto = '$nome_produto')", "cod_produto, fornecedor_produto, nome_produto, tipo_produto");
		
	if ($nome_produto == 'todos' AND $fornecedor_produto == 'todos') 
  		$produto = DBRead ("produto", "WHERE tipo_produto = '$tipo_produto'", "cod_produto, fornecedor_produto, nome_produto, tipo_produto");
		
	if ($nome_produto == 'todos' AND $tipo_produto == 'todos' AND $fornecedor_produto == 'todos') {
    	$produto = DBRead ("produto", "", "cod_produto, fornecedor_produto, nome_produto, tipo_produto");
	} 
  
  // Serve para contar quantos registros você tem na seua tabela para fazer a paginação
  $sql = DBRead ("produto");

  // Quantidade de registros pra paginação
  $quant = count($sql);

  //var_dump($produto);
  //echo $produto;
  foreach ($produto as $pd) {
    
  ?>
    <tr>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;  text-align:center;">
        <?php echo $pd['cod_produto']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $pd['fornecedor_produto']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $pd['nome_produto']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $pd['tipo_produto']; ?>
      </td>
    </tr>
    <?php
    if ($produto == false) {
      echo "<tr>";
      echo "<td colspan='8'>Nenhum resultado encontrado!</td>";
      echo "</tr>";
    }
      }
    ?>
  </tbody>
</table>
</div>
</div>
</body>
</html>
