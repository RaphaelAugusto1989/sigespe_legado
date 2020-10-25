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
      <td valign="middle" colspan="5">
      	<img src="imagens/logo.png" width="20%" height="46" style=" margin: 10px; float: left;">
        <center>
        <div id="tit_relatorio">
      		<p><b>Sistema Gerenciador de Produtos e Estoque</b></p>
        	<p><?php echo $_SESSION ["nome"]; ?></p>
        </div>
        </center>
        <div id="date">
        	<b>Data:</b> <?php echo $data; ?> <br />
      		<b>Hora:</b>  <?php echo $hora;?>
        </div>
      </td>
    </tr>
    <tr>
      <td colspan="5" align="center" valign="middle">
      	
      </td>
    </tr>
    <tr>
      <td height="56" colspan="5" align="center" valign="middle">
      		<b class="titulo_relatorio">Relatório de Fornecedores Cadastrados</b>
      </td>
    </tr>
    <tr>
      <td width="264" style="padding: 5px; text-align:center;"><b>Fornecedor:</b></td>
      <td width="141" style="padding: 5px;"><b>Telefone:</b></td>
      <td width="294" style="padding: 5px;"><b>Contato:</b></td>
      <td width="211" style="padding: 5px;"><b>E-mail:</b></td>
    </tr>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

  //RECEBE DADOS DO FORMULARIO
  $tipo = $_POST["tipo_produto"];

  //LÊ DADOS DO BANCO
  $fornecedor = DBRead ("fornecedor", " ", "*");
  
  
  // Serve para contar quantos registros você tem na seua tabela para fazer a paginação
  $sql = DBRead ("fornecedor");

  // Quantidade de registros pra paginação
  $quant = count($sql);

  //var_dump($produto);
  //echo $produto;
  foreach ($fornecedor as $for) {
    
  ?>
    <tr>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;  text-align:center;">
        <?php echo $for['nome_fornecedor']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $for['fone_fornecedor']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $for['nome_contato']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $for['email_fornecedor']; ?>
      </td>
    <?php
      }
    ?>
  </tbody>
</table>
</div>
</div>
</body>
</html>
