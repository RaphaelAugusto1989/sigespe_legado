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
            
            function id(el) {
              return document.getElementById(el);
            }
            function mostra(element) {
              if (element.value) {
                id(element.value).style.display = 'block';
              }
            }
            function id(el) {
              return document.getElementById(el);
            }
            function mostra(element) {
              if (element.value) {
                id(element.value).style.display = 'block';
              }
            }
            function esconde_todos($element, tagName) {
              var $elements = $element.getElementsByTagName(tagName),
                  i = $elements.length;
              while(i--) {
                $elements[i].style.display = 'none';
              }
            }
            function showDiv(div)
            {
            document.getElementById("avista").className = "invisivel";
            document.getElementById("aprazo").className = "invisivel";
            
            document.getElementById(div).className = "visivel";
            }
            
              function DoNav(theUrl)
              {
              document.location.href = theUrl;
              } 
            
            
            addEvent = function(o, e, f, s) { 
               var r = o[r = "_" + (e = "on" + e)] = o[r] || (o[e] ? [[o[e], o]] : []), a, c, d; 
               r[r.length] = [f, s || o], o[e] = function(e){ 
                  try{ 
                     (e = e || event).preventDefault || (e.preventDefault = function(){e.returnValue = false;}); 
                     e.stopPropagation || (e.stopPropagation = function(){e.cancelBubble = true;}); 
                     e.target || (e.target = e.srcElement || null); 
                     e.key = (e.which + 1 || e.keyCode + 1) - 1 || 0; 
                  }catch(f){} 
                  for(d = 1, f = r.length; f; r[--f] && (a = r[f][0], o = r[f][1], a.call ? c = a.call(o, e) : (o._ = a, c = o._(e), o._ = null), d &= c !== false)); 
                  return e = null, !!d; 
                } 
            }; 
            
            function formatCurrency(o, n, dig, dec) { 
               o.c = !isNaN(n) ? Math.abs(n) : 2; 
               o.dec = typeof dec != "string" ? "," : dec, o.dig = typeof dig != "string" ? "." : dig; 
               addEvent(o, "keypress", function(e) { 
                  if (e.key > 47 && e.key < 58) { 
                     var o, s, l = (s = ((o = this).value.replace(/^0+/g, "") + String.fromCharCode(e.key)).replace(/\D/g, "")).length, n; 
                     if(o.maxLength + 1 && l >= o.maxLength) return false; 
                     l <= (n = o.c) && (s = new Array(n - l + 2).join("0") + s); 
                     for(var i = (l = (s = s.split("")).length) - n; (i -= 3) > 0; s[i - 1] += o.dig); 
                     n && n < l && (s[l - ++n] += o.dec); 
                     o.value = s.join(""); 
                  } 
                  e.key > 30 && e.preventDefault(); 
               }); 
            } 
            
            function fmtMoney(n, c, d, t){ 
               var m = (c = Math.abs(c) + 1 ? c : 2, d = d || ",", t = t || ".", 
                  /(\d+)(?:(\.\d+)|)/.exec(n + "")), x = m[1].length > 3 ? m[1].length % 3 : 0; 
               return (x ? m[1].substr(0, x) + t : "") + m[1].substr(x).replace(/(\d{3})(?=\d)/g, 
                  "$1" + t) + (c ? d + (+m[2] || 0).toFixed(c).substr(2) : ""); 
            }; 
            
            function soma() { 
              var f = document.forms[0]; 
              var valor1 = parseFloat(f.valor.value.replace('.','').replace(',','.')); 
              var valor2 = parseFloat(f.prazo.value); 
              var valor3 = ('' - ((valor1||0) / (valor2||0))); 
              f.valor_dividido.value = fmtMoney(valor3); 
            } 
            
            function init() { 
              formatCurrency(document.forms[0].campo1, 2, ".", ","); 
            
            } 
            window.onload = init;
			
function validar(dom,tipo){
	switch(tipo){
		case'text':var regex=/[4-9A-Za-z]/g;break;
	}
	dom.value=dom.value.replace(regex,'');
}

function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}

function validateChar(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /^[a-z A-Z]+$/;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
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
      $id_pedido        = test_input($_POST["id_pd"]);
      $num_pedido       = test_input($_POST["num_pedido"]);
      $lojas            = test_input($_POST["lojas"]);
      $fornecedor       = test_input($_POST["fornecedor"]);
      $valor            = test_input($_POST["valor"]);
      $qtd              = test_input($_POST["qtd"]);
      $entrega          = test_input($_POST["data_entrega"]);
      $cond_pagamento   = test_input($_POST["cond_pagamento"]);
      $prazo            = test_input($_POST["prazo"]);
      $valor_dividido   = test_input($_POST["valor_dividido"]);
      $descricao        = test_input($_POST["descricao"]);
      
      $valor = str_replace("." , "" , $valor ); // Primeiro tira os pontos
      $valor = str_replace(",",".", $valor); // Substitui a virgula pelo ponto
      
      $valor_dividido = str_replace("." , "" , $valor_dividido ); // Primeiro tira os pontos
      $valor_dividido = str_replace(",",".", $valor_dividido); // Substitui a virgula pelo ponto
    	
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
	$entrega = JobData("TelaBanco",$entrega);
	$data_avista = JobData("TelaBanco", $data_avista);
}

if (get_browser_name($_SERVER['HTTP_USER_AGENT']) == 'Internet Explorer') {
	$entrega = JobData("TelaBanco",$entrega);
	$data_avista = JobData("TelaBanco", $data_avista);
}

		//LÊ TABELAS CONDIÇÕES DE PAGAMENTOS
		$le_condicoes = DBRead ('condicoes_pagamentos', "WHERE cod_condicoes = '$condicoes'", '*');
		$contadorParcelas = 1;
		
		if ($cond_pagamento == 'avista') {
				$cod_parcela = "0";
				$parcela = $data_avista;
				$valor_pedido = $valor;
				$arrayParcelas[$cod_parcela] = $parcela;
			} else { 
			     $parcela = ""; 
			}
			
		foreach ($le_condicoes as $cond) {
			
			if ($cod_condicoes != $cond['cod_condicoes']) {
			 	$Errborda = "style='border:2px solid #D90003;'";
				$ErrCondicoes = "<span style='font-size: 12px; color: #D90003;'>Digite o Código Corretamente!</span>";
			}
			//Aqui é aonde chega do form as datas
			if ($cond['primeira_condicao'] != '0') {
				$cod_parcela = "1";
				$parcela = date('Y-m-d', strtotime("+".$cond['primeira_condicao']." days", strtotime($entrega)));
				$valor_pedido = $valor_dividido;
				$arrayParcelas[$cod_parcela] = $parcela;
			} 
				
			if ($cond['segunda_condicao'] != '0') {
				$cod_parcela = "2";
				$parcela = date('Y-m-d', strtotime("+".$cond['segunda_condicao']." days", strtotime($entrega)));
				$valor_pedido = $valor_dividido;
				$arrayParcelas[$cod_parcela] = $parcela;
			} 
				
			if ($cond['terceira_condicao'] != '0') {
				$cod_parcela = "3";
				$parcela = date('Y-m-d', strtotime("+".$cond['terceira_condicao']." days", strtotime($entrega)));
				$valor_pedido = $valor_dividido;
				$arrayParcelas[$cod_parcela] = $parcela;
			} 
				
			if ($cond['quarta_condicao'] != '0') {
				$cod_parcela = "4";
				$parcela = date('Y-m-d', strtotime("+".$cond['quarta_condicao']." days", strtotime($entrega)));
				$valor_pedido = $valor_dividido;
				$arrayParcelas[$cod_parcela] = $parcela;
			} 
				
			if ($cond['quinta_condicao'] != '0') {
				$cod_parcela = "5";
				$parcela = date('Y-m-d', strtotime("+".$cond['quinta_condicao']." days", strtotime($entrega)));
				$valor_pedido = $valor_dividido;
				$arrayParcelas[$cod_parcela] = $parcela;
			} 
		}//Aqui é o fim do foreach!
		
		   
      $pedido = array (
        'num_pedido' => $num_pedido,
        'nome_loja' => $lojas,
        'nome_fornecedor' => $fornecedor,
        'valor_pedido' => $valor,
        'qtd_pedido' => $qtd,
        'data_entrega' => $entrega,
        'cod_pag_pedido' => $cond_pagamento,
        'prazo' => $prazo,
        'valor_dividido' => $valor_dividido,
        'descricao' => $descricao
      );
      
      $altera = DBUpDate('pedidos', $pedido, 'id_pedidos="'.$id_pedido.'"');
	  
	  
	  $DatasPedidos = array (
	  		'valor_do_pedido' => $valor_dividido
	  );
	  
	  $datas_pag_pedidos = DBUpDate('datas_pag_pedidos', $DatasPedidos, 'cod_pedido="'.$num_pedido.'"');
     
      //var_dump($pedido);
      if ($altera) {
            echo "<script> alert('Alteração realizada com sucesso!') </script>";
            echo "<script>location.href=('visualiza_pedido.php')</script>";
      }
      else { 
            echo "Erro ao alterar dados da loja, tente novamente mais tarde!";
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
  $le_pedido = DBRead ('pedidos', "WHERE id_pedidos = '$id'", '*');
  //echo '<pre>';print_r($le_pedido);exit;
  foreach ($le_pedido as $pd){
	  
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

if (get_browser_name($_SERVER['HTTP_USER_AGENT']) == 'Chrome') {
	$entrega = $pd['data_entrega'];
	$PagAVista = $pd['data_entrega'];
}

if (get_browser_name($_SERVER['HTTP_USER_AGENT']) == 'Firefox') {
	$entrega = JobData("BancoTela2", $pd['data_entrega']);
	$PagAVista = JobData("BancoTela2", $pd['data_entrega']);
}

if (get_browser_name($_SERVER['HTTP_USER_AGENT']) == 'Internet Explorer') {
	$entrega = JobData("BancoTela2", $pd['data_entrega']);
	$PagAVista = JobData("BancoTela2", $pd['data_entrega']);
}

//echo get_browser_name($_SERVER['HTTP_USER_AGENT']);

    ?>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
    <div class="voltar">
		<a href="javascript:history.back(1);">Voltar</a>
	</div>
    <table border="0" cellpadding="0" cellspacing="0" class="table">
      <tbody>
        <tr>
          <td height="42" colspan="2" align="center"><span class="titulo">Alterar Pedido</span></td>
        </tr>
        <tr>
          <td width="21%" align="right">Num. do Pedido:<input type="hidden" name="id_pd" value="<?php echo $pd['id_pedidos']; ?>"></td>
          <td width="79%"><input type="text" name="num_pedido" class="cod" value="<?php echo $pd['num_pedido']; ?>"></td>
        </tr>
        <tr>
          <td align="right"><label for="select">Loja:</label></td>
          <td>
            <select name="lojas" class="select">
            <option><?php echo $pd['nome_loja']; ?></option>
            <?php
            //LÊ DADOS DO BANCO
            $lojas = DBRead ('lojas', 'ORDER BY cod_loja ASC', 'cod_loja, nome_loja');
    
            foreach ($lojas as $lj){
              
            ?>
                <option><?php echo $lj['cod_loja']; ?> - <?php echo $lj['nome_loja']; ?></option>
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
              <option><?php echo $pd['nome_fornecedor']; ?></option>
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
          <td align="right">Valor:</td>
          <td>
          <input type="text" name="valor" class="cod" onKeyPress="return(MascaraMoeda(this,'.',',',event))" value="<?php echo number_format($pd['valor_pedido'], 2, ',', '.'); ?>">
          <span style="margin-left: 20px;">Quantidade: </span>
          <input type="text" name="qtd" class="cod" value="<?php echo $pd['qtd_pedido']; ?>">
          </td>
        </tr>
        <tr>
          <td align="right">Entrega:</td>
          <td><input type="date" name="data_entrega" class="cod" maxlength="10" placeholder="dd/mm/aaaa" onkeyup="formatar('##/##/####', this, event)" value="<?php echo $entrega; ?>" onkeypress='validate(event)'></td>
        </tr>
        <tr>
          <td align="right">Cond. Pagamento:</td>
          <td>
            <select name="cond_pagamento" class="cod" style="width: 152px;">
              <?php 
                if ($pd['cod_pag_pedido'] == 'avista') {
                  echo "<option value='avista'>Á Vista</option>";
                }else {
                  echo "<option value='aprazo'>Á Prazo</option>";
                } ?>
              <?php
                if ($pd['cod_pag_pedido'] == 'avista') {
                  echo "<option value='aprazo'>Á Prazo</option>";
                }else {
                  echo "<option value='avista'>Á Vista</option>";
                }
              ?>
            </select>
          </td>
        </tr>
        <tr>
        	<td  align="right" valign="top" style="padding-top: 5px;"> Condições de Pagamento:</td>
        	<td>
            <input type="text" id="categoria" name="condicoes" class="cod" placeholder="Código" onkeypress="validate(event)" value="<?php echo $pd['cod_cond_pag']; ?>"><br /> 
       <span style="font-size:10px; color:#7B7B7B; margin-bottom: 10px;">*Aperte TAB para atualizar os valores!</span> <br />
            </td>
        </tr>
    <?php
    $datas_pag = DBRead ('datas_pag_pedidos', 'WHERE cod_pedido = "'.$pd['num_pedido'].'"', 'datas_pagamentos');
    //echo'<pre>';print_r($datas_pag);exit;
	$contador = 0;	
    foreach ($datas_pag as $dt) {
        if ($pd['cod_pag_pedido'] == 'avista') {
			$exibeVencimeto = 0;
			
            $tipo_pagamento = "
                  <td align='right'>Data do Pagamento à vista:</td>
                  <td><input type='date' name='data_avista' class='cod' maxlength='10' placeholder='dd/mm/aaaa' onkeyup='formatar('##/##/####', this, event)' value='$PagAVista'></td>
                ";
        } else {
			$exibeVencimeto = 1;
			$contador++;
			$datas = date('d/m/Y', strtotime($dt["datas_pagamentos"]));
			$datas_pagamento .= $contador.'ª - '.$datas.'&nbsp;&nbsp;'; 
    	   $tipo_pagamento = "
        		  <td valign='bottom' align='right'>
        				<span style='margin-top: 5px; margin-bottom: 20px; float:right; width: 100%;'>Dividido em:</span>
        				<!-- comentado<span style='margin-top: 5px;float:right; width: 100%;'>Vencimentos em:</span>-->
        			</td>
        		  <td>
                    <input name='prazo' value='".$pd['prazo']."' class='cod' onkeyup='soma()' onKeyDown='validar(this,'text');' style='width: 15px; float: left;' >
        			<span style='margin-left: 2px; float:left;'>X</span>
    				<span style='margin-left: 20px;'>De: R$ </span>
    				<input type='text' onKeyPress='return(MascaraMoeda(this,'.',',',event))' name='valor_dividido' class='cod' value='".number_format($pd['valor_dividido'], 2, ',', '.')."'> <br />
    				<span style='margin-bottom: 15px; font-size:10px;'>*O valor só poder ser dividido em até 5x.</span>
    				<br />";
      		
   
        }
    }//fim do foreach datas_pag
    echo '<tr>'.$tipo_pagamento.'</tr>'; 
	if($exibeVencimeto==1){ 
		echo '<tr><td  valign="bottom" align="right"> Vencimentos: </td><td>'.$datas_pagamento.' </td></tr>';
	}
	
    ?>
        <tr>
          <td width="21%" align="right">Descrição:</td>
          <td width="79%"><input type="text" name="descricao" class="text" style=" width: 500px;" value="<?php echo $pd['descricao']; ?>"></td>
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
