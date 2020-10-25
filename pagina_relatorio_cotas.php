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
<table width="85%" border="0" cellspacing="0" cellpadding="0">
  <tbody>
    <tr>
      <td valign="middle" colspan="4">
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
      <td height="56" colspan="6" align="center" valign="middle">
      		<b class="titulo_relatorio">Relatório de Cotas Cadastradas</b>
      </td>
    </tr>
    <tr>
      <td width="334" style="padding: 5px;"><b> Código e Loja</b></td>
      <td width="327" style="padding: 5px;"><b>Mês</b></td>
      <td width="282" style="padding: 5px;"><b>Cota Mensal</b></td>
      <td width="106" style="padding: 5px;"><b>Saldo Cota</b></td>
    </tr>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

  //RECEBE DADOS DO FORMULARIO
  $loja = $_POST["loja"];
  $quinzena = $_POST["quinzena"];

  //LÊ DADOS DO BANCO
 // $lojas = DBRead ("cotas", "ORDER BY nome_loja ASC", "*");
  
  if ($loja == 'todos') {
    $lojas = DBRead ("cotas", "ORDER BY nome_loja ASC", "*");
  } else {
    $lojas = DBRead ("cotas", "WHERE nome_loja = '$loja'", "*");
  }
  
  // Serve para contar quantos registros você tem na seua tabela para fazer a paginação
  $sql = DBRead ("cotas");

  // Quantidade de registros pra paginação
  $quant = count($sql);

  $soma = 0;
  //var_dump($produto);
  //echo $produto;
  foreach ($lojas as $lj) {
    
		$valor = number_format($lj['cota_comp'] - $lj['cota_entrada'], 2, ',', '.');  
		if ($lj['cota_saldo'] <= 0) {  $cor = "color: #D50003;";} 
		else { $cor = "color:#009034;";}       
  ?>
    <tr>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $lj['nome_loja']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $lj['mes_cota'].' de '.$lj['ano_cota']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo number_format($lj['cota_mensal'], 2, ',', '.'); ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;<?php echo $cor;?>">
        <?php echo number_format($lj['cota_saldo'], 2, ',', '.');; ?>
      </td>
      </tr>
          </tr>
    <?php
      }
    ?>
  </tbody>
</table>
</div>
</div>
</body>
</html>
