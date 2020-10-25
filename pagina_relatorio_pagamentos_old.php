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
      <td height="57" colspan="6">
      <img src="imagens/logo.png" width="20%" height="46" style="margin: 10px; float: left;">
      <center>
        <div id="tit_relatorio" style="margin-left: 75px;">
      		<p><b>Sistema Gerenciador de Produtos e Estoque</b></p>
        	<p><?php echo $_SESSION ["nome"]; ?></p>
        </div>
        </center>
      </td>
      <td width="104" valign="middle">
      <b>Data:</b> <?php echo $data; ?> <br />
      <b>Hora:</b>  <?php echo $hora;?>
      </td>
    </tr>
    <tr>
      <td colspan="3" align="center" valign="middle">
      	
      </td>
    </tr>
    <tr>
      <td height="56" colspan="7" align="center" valign="middle">
      		<b class="titulo_relatorio">Relatório de Pagamento de Pedidos</b>
      </td>
    </tr>
    <tr>
      <td width="66" style="padding: 5px; text-align:center;"><blockquote><p><b>N° do Pedido</b></p></blockquote></td>
      <td width="204" style="padding: 5px;"><b>Loja</b></td>
      <td width="195" style="padding: 5px;"><b>Fornecedor</b></td>
      <td width="130" style="padding: 5px;" align="center"><b>Forma de Pagamento</b></td>
      <td width="139" style="padding: 5px;" align="center"><b>Data de Vencimento</b></td>
      <td width="262" style="padding: 5px;"><b>Descrição</b></td>
      <td width="104" style="padding: 5px;"><b>Valor á Pagar</b></td>
    </tr>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

  //RECEBE DADOS DO FORMULARIO
  $de = $_POST["de"];
  $ate = $_POST["ate"];
	
	$what_select = "extract(month FROM datas_pagamentos) mes_entrega, cod_pedido, cod_cond_pagamento, datas_pagamentos";
	
	$produto = DBRead ('datas_pag_pedidos INNER JOIN pedidos', "WHERE (datas_pagamentos BETWEEN '$de' AND '$ate')", '*');
	
	$sql = DBRead ("datas_pag_pedidos INNER JOIN pedidos", "GROUP BY extract(month FROM datas_pag_pedidos.datas_pagamentos)", "sum(datas_pag_pedidos.valor_do_pedido) total_valor_do_pedido, datas_pagamentos, extract(month FROM datas_pag_pedidos.datas_pagamentos) mes_entrega"); 

//print_r($produto); 
//echo "<br /> <br /> ";
//print_r($sql);

foreach($sql as $totals) { 
    $ValorMesTotal = number_format($totals['total_valor_do_pedido'], 2, ',', '.');
	$qtd_p = 0;

  foreach ($produto as $pd) {
	  if ($pd['cod_pag_pedido'] == 'avista') {
		  $ValorAvista = $pd['valor_pedido'];
	  }
	  else {
		  $ValorAvista = '0';
	  }
      $total = $total + $ValorAvista + $pd['valor_dividido'];


if ($pd['datas_pagamentos'] == $totals['datas_pagamentos']) {
	$qtd_p++; 
  ?>
    <tr>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;  text-align:center;">
        <?php echo $pd['num_pedido']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $pd['nome_loja']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $pd['nome_fornecedor']; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;" align="center">
        <?php 
		if ($pd['cod_pag_pedido'] == 'avista') {
			echo "Á Vista";
		} else {
				echo "Á Prazo";
			}
		?>
      </td>
      <td align="center" style="padding: 5px; border-bottom: 1px dashed #000000;">
			<?php $data_pagamentos = date('d/m/Y', strtotime($pd['datas_pagamentos'])); echo $data_pagamentos; ?>
      </td>
      <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php echo $pd['descricao']; ?>
      </td>
       <td style="padding: 5px; border-bottom: 1px dashed #000000;">
        <?php  
				echo "R$ ".number_format($pd['valor_do_pedido'], 2, ',', '.')."";
		 ?>
      </td>
    </tr>
    <?php
}//FIM DO IF	
} //FIM FOR $PRODUTO	
	
    if ($qtd_p > 0) { 
	?>
    <tr>
      <td colspan="6" align="right" style="padding: 5px; padding-bottom:15px;"> Total do Mês:</td>
      <td style="padding: 5px; padding-bottom:15px; color: #B30002;">
        <?php echo "<b>R$ ".$ValorMesTotal."</b>"; ?>
      </td>
    </tr>
<?php
	}//FIM IF $qtd_p
	
} //FIM FOR SQL
    if ($produto == false) {
      	echo "<tr>";
      	echo "<td colspan='8' style='color:#CC0003; font-size: 24px;'; align='center'>Nenhum Resultado Encontrado!</td>";
      	echo "</tr>";

	}
?>
  	</tr>
    <tr>
    	<td colspan="6" align="right" style="padding: 5px;"><b>Valor Total:</b></td>
        <td style="padding: 5px;"><?php echo "R$ ".number_format($total, 2, ',', '.').""; ?></td>
    </tr>
  </tbody>
</table>
</div>
</div>
</body>
</html>
