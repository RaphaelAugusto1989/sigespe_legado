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
      <td width="82" style="padding: 5px; text-align:center;"><blockquote><p><b>N° do Pedido</b></p></blockquote></td>
      <td width="201" style="padding: 5px;"><b>Loja</b></td>
      <td width="188" style="padding: 5px;"><b>Fornecedor</b></td>
      <td width="131" style="padding: 5px;" align="center"><b>Forma de Pagamento</b></td>
      <td width="132" style="padding: 5px;" align="center"><b>Data de Vencimento</b></td>
      <td width="262" style="padding: 5px;"><b>Descrição</b></td>
      <td width="104" style="padding: 5px;"><b>Valor á Pagar</b></td>
    </tr>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';
 
 for($i=1; $i<=12; $i++){
	 if($i<10){
		$mes = '0'.$i;	 
	 }else{
		$mes = $i;	 
	 }
	$arrayTotalMes[$mes] = 0;	 
 }$totalGeral = 0;
 
//RECEBE DADOS DO FORMULARIO
$loja = $_POST["loja"];
$de = $_POST["de"];
$ate = $_POST["ate"];

//VERIFICA BROWSER
function get_browser_name($user_agent)
{
    if (strpos($user_agent, 'Opera') || strpos($user_agent, 'OPR/')) return 'Opera';
    if (strpos($user_agent, 'Edge')) return 'Edge';
    if (strpos($user_agent, 'Chrome')) return 'Chrome';
    if (strpos($user_agent, 'Safari')) return 'Safari';
    if (strpos($user_agent, 'Firefox')) return 'Firefox';
    if (strpos($user_agent, 'MSIE') || strpos($user_agent, 'Trident/7')) return 'Internet Explorer';
    
    return 'Other';
}

if (get_browser_name($_SERVER['HTTP_USER_AGENT']) == 'Firefox') {
	
	$de = JobData("TelaBanco",$_POST["de"]);
	$ate = JobData("TelaBanco",$_POST["ate"]);
}

if (get_browser_name($_SERVER['HTTP_USER_AGENT']) == 'Internet Explorer') {
	
	$de = JobData("TelaBanco",$_POST["de"]);
	$ate = JobData("TelaBanco",$_POST["ate"]);
}

//echo get_browser_name($_SERVER['HTTP_USER_AGENT']);
//echo '<br />DE: '.$de.' até '.$ate;	

	$what_select = "extract(month FROM datas_pagamentos) mes_entrega, cod_pedido, cod_cond_pagamento, datas_pagamentos";

if ($loja == 'todos')	
	$produto = DBRead ('pedidos as p, datas_pag_pedidos as pg', " WHERE pg.cod_pedido = p.num_pedido AND pg.datas_pagamentos BETWEEN '{$de}' AND '{$ate}' ORDER BY  pg.datas_pagamentos ASC, p.num_pedido ASC", 'p.num_pedido,  p.nome_loja, p.nome_fornecedor, p.cod_pag_pedido, DATE_FORMAT(pg.datas_pagamentos, "%d/%m/%Y") as datas_pagamentos , p.descricao, pg.valor_do_pedido, DATE_FORMAT(pg.datas_pagamentos, "%m") as mesVencimento');
else 
	$produto = DBRead ('pedidos as p, datas_pag_pedidos as pg', " WHERE pg.cod_pedido = p.num_pedido AND pg.datas_pagamentos BETWEEN '{$de}' AND '{$ate}' AND p.nome_loja = '$loja' ORDER BY  pg.datas_pagamentos ASC, p.num_pedido ASC", 'p.num_pedido,  p.nome_loja, p.nome_fornecedor, p.cod_pag_pedido, DATE_FORMAT(pg.datas_pagamentos, "%d/%m/%Y") as datas_pagamentos , p.descricao, pg.valor_do_pedido, DATE_FORMAT(pg.datas_pagamentos, "%m") as mesVencimento');

$controle = 0;

foreach($produto as $indice => $valores){
	  
	  $mesVencimento = $valores["mesVencimento"];
	  
	  if($controle<>0 AND  ($controle<>$mesVencimento)){
		   $corpoRelatorio .='<tr>
		  <td colspan="6" align="right" style="padding: 5px; padding-bottom:15px;"> Total do Mês:</td>
		  <td style="padding: 5px; padding-bottom:15px; color: #B30002; font-weight: bold;">R$ '.number_format($arrayTotalMes[$controle], 2, ',', '.').'</td>
		  
		  </tr>';
		}
	  
	  
	  $controle = $mesVencimento;
	  
	  $arrayTotalMes[$mesVencimento] +=$valores["valor_do_pedido"];
	  $totalGeral+=$valores["valor_do_pedido"];
	  
	  if ($valores["cod_pag_pedido"]== 'avista') {
			$descTipoPgto =  "Á Vista";
		} else {
			$descTipoPgto = "Á Prazo";
		}
	  
	  
	  $corpoRelatorio .='<tr>
	  						<td style="padding: 5px; border-bottom: 1px dashed #000000;  text-align:center;">
	  					 	'.$valores["num_pedido"].'
						 	</td>
							<td style="padding: 5px; border-bottom: 1px dashed #000000;">
	  					 	'.$valores["nome_loja"].'
						 	</td>
							<td style="padding: 5px; border-bottom: 1px dashed #000000;">
	  					 	'.$valores["nome_fornecedor"].'
						 	</td>
							<td style="padding: 5px; border-bottom: 1px dashed #000000;  text-align:center;">
	  					 	'.$descTipoPgto.'
						 	</td>
							<td style="padding: 5px; border-bottom: 1px dashed #000000;  text-align:center;">
	  					 	'.$valores["datas_pagamentos"].'
						 	</td>
							<td style="padding: 5px; border-bottom: 1px dashed #000000;">
	  					 	'.$valores["descricao"].'
						 	</td>
							<td style="padding: 5px; border-bottom: 1px dashed #000000;">
	  					 	R$ '.number_format($valores["valor_do_pedido"], 2, ',', '.').'
						 	</td>
							
						 </tr>
						';

}
 $corpoRelatorio .='<tr>
 		  <td colspan="6" align="right" style="padding: 5px; padding-bottom:15px;"> Total do Mês:</td>
		  <td style="padding: 5px; padding-bottom:15px; color: #B30002; font-weight: bold;">R$ '.number_format($arrayTotalMes[$controle], 2, ',', '.').'</td>
		  
		  </tr>';
		  
	$corpoRelatorio .='<tr><td colspan="6" style="height: 20px; text-align: right;"><b>Valor Total:</b></td>
		  <td style="padding: 5px; color: #005F16; font-size:16px;"> R$ '.number_format($totalGeral, 2, ',', '.').'</td>
		  
		  </tr>';
		  	  
		  
echo ($corpoRelatorio);exit;
exit;
    if ($produto == false) {
      	echo "<tr>";
      	echo "<td colspan='8' style='color:#CC0003; font-size: 24px;'; align='center'>Nenhum Resultado Encontrado!</td>";
      	echo "</tr>";

	}
?>
  	</tr>
  </tbody>
</table>
</div>
</div>
</body>
</html>
