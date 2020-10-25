<?php
    session_start();
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>.:: SIGEPE ::.</title>
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

 function startTime() {
     var today=new Date();
     var h=today.getHours();
     var m=today.getMinutes();
     var s=today.getSeconds();
     // add a zero in front of numbers<10
     m=checkTime(m);
     s=checkTime(s);
     document.getElementById('txt').innerHTML=h+":"+m+":"+s;
     t=setTimeout('startTime()',500);
 }

 function checkTime(i){
 if (i<10) {
     i="0" + i;
 }
     return i;
 }
</script>

<style>
#pop {
	display: block;
	position: fixed;
	top: 22%;
	right: 5%;
	margin-left:-150px;
	margin-top:-100px;
	padding:20px;
	width: 580px;
	height:auto;
	background-color: hsla(0,0%,86%,1.00);
	border: 1px solid hsla(0,0%,33%,1.00);
	border-radius: 30px;
	font-family: Gotham, "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	text-align: left;
}
#pop p {
	font-size:16px;
}
</style> 

</head>

<body onload="startTime()">
<div id="top">
<div id="logo">
	<a href="sigepe.php">
		<img src="imagens/logo.png" class="logo">
	</a>
</div>
<div id="data_cavecalho">
<script language="JavaScript">

  document.write("<font color='#FFFFFF' face='arial'>")
  var mydate=new Date()
  var year=mydate.getYear()
  if (year<2000)
  year += (year < 1900) ? 1900 : 0
  var day=mydate.getDay()
  var month=mydate.getMonth()
  var daym=mydate.getDate()
  if (daym<10)
  daym="0"+daym
  var dayarray=new Array("Domingo","Segunda-feira","Terça-feira","Quarta-feira","Quinta-feira","Sexta-feira","Sábado")
  var montharray=new Array(" de Janeiro de "," de Fevereiro de "," de Março de ","de Abril de ","de Maio de ","de Junho de","de Julho de ","de Agosto de ","de Setembro de "," de Outubro de "," de Novembro de "," de Dezembro de ")
  document.write("   "+dayarray[day]+", "+daym+" "+montharray[month]+year+" ")
  document.write("</b></i></font>")
  </script> -
</div>
<div id="txt"></div>
<div id="nome"> <?php require 'processos/valida_login.php';?></div>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

$id = $_SESSION ["id_user"];
$link = DBConnect();

DBClose($link);
?>
</div>
<div id="menu" style="color:#000000;">
<div id='cssmenu'>
<ul>
   <li class='active has-sub'><a href='#'><span>Cadastro</span></a>
      <ul>
         <li><a href="cadastrar_pedido.php" target="conteudo"><span>Pedidos</span></a></li>
         <li><a href="cadastrar_fornecedor.php" target="conteudo"><span>Fornecedor</span></a></li>
         <li><a href="cadastrar_loja.php" target="conteudo"><span>Loja</span></a></li>
         <li><a href="cadastrar_linhas.php" target="conteudo"><span>Produto</span></a></li>
         <li><a href="cadastrar_cotas.php" target="conteudo"><span>Cotas</span></a></li>
<?php
//echo $_SESSION["tipo"];
if ($_SESSION["tipo"] == 'Administrador'){
         echo "<li><a href='cadastrar_condicoes_pagamento.php' target='conteudo'><span>Condições de Pagamento</span></a></li>";
		  } else {}
?>
      </ul>
   </li>
   
   <li class='active has-sub'><a href='#'><span>Administrar</span></a>
      <ul>
         <li><a href="visualiza_pedido.php" target="conteudo"><span>Pedidos</span></a></li>
         <li><a href="visualiza_fornecedor.php" target="conteudo"><span>Fornecedor</span></a></li>
         <li><a href="visualiza_loja.php" target="conteudo"><span>Loja</span></a></li>
         <li><a href="visualiza_linhas.php" target="conteudo"><span>Produto</span></a></li>
         <li><a href="visualiza_cotas.php" target="conteudo"><span>Cotas</span></a></li>
<?php
//echo $_SESSION["tipo"];
if ($_SESSION["tipo"] == 'Administrador'){
	     echo "<li><a href='visualiza_condicoes_pagamento.php' target='conteudo'><span>Condições de Pagamento</span></a></li>";
} else {}
?>
      </ul>
   </li>
   <li class='active has-sub'><a href='#'><span>Relátorios</span></a>
      <ul>
         <li><a href="relatorio_de_pedido.php" target="conteudo"><span>Entrega de Pedidos</span></a></li>
         <li><a href="relatorio_de_pagamento.php" target="conteudo"><span>Pagamento de Pedidos</span></a></li>
         <li><a href="relatorio_de_loja.php" target="conteudo"><span>Lojas</span></a></li>
         <li><a href="relatorio_de_linhas.php" target="conteudo"><span>Produtos</span></a></li>
         <li><a href="relatorio_de_cotas.php" target="conteudo"><span>Cotas</span></a></li>
      </ul>
   </li>
   <li class='active has-sub'><a href='#'><span>Usuário</span></a>
      <ul>
         <li><a href="dados_usuario.php" target="conteudo"><span>Dados</span></a></li>
         <li><a href="alterar_senha_usuario.php?id=<?php echo $id;?>" target="conteudo"><span>Alterar Senha</span></a></li>
         <?php
         //echo $_SESSION["tipo"];
          if ($_SESSION["tipo"] == 'Administrador'){
            echo "<li><a href='cadastrar_usuario.php' target='conteudo'><span>Cadastrar Usuário</span></a></li>";
            echo "<li><a href='visualiza_usuario.php' target='conteudo'><span>Usuários Cadastrados</span></a></li>";
			echo "<li><a href='backup_bd.php' target='conteudo'><span>Fazer Bkp do Banco de Dados</span></a></li>";
          } else { 
            }
         ?>
         
      </ul>
   </li>
   <li><a href='processos/logout.php'><span>Logoff</span></a>
   </li>
</ul>
</div>
</div> <!--FIM MENU-->
<iframe src="branco.php" scrolling="yes" name="conteudo" id="conteudo">
  
</iframe> 

<div id="artspeck">
        Desenvolvidor por: 
            <a href="http://www.artspeck.com.br" target="_blank">
              <img src="imagens/artspeck.png" width="90" height="22" border="0" style="margin-left: 5px;" />
            </a>
</div>

<!--FIM LINKS ESCOLAS-->
<!-- POPUP AVISOS
<div id="pop">
<a href="#" onclick="document.getElementById('pop').style.display='none';" style="float: right;">[Fechar]</a>
<br />
<br />
<p style="color: #D50003; text-align:center;"><b>AVISO IMPORTANTE!</b></p>
<br />
<span style="text-align: left;">
Prezado Usuário, <br/>
<br/>
Verificamos que ainda não foi feita o pagamento da hospedagem acordado no contrato, e informamos que a garantia do software acabou dia 14 de Fevereiro e com isso acabou os 3 meses de hospedagem grátis.<br />
Caso o pagamento não seja efetuado, ocorrerá a suspensão do acesso ao sistema por atraso do pagamento da hospedagem. <br />
O pagamento pode ser efetuado via deposito bancário. <br />
<br/>
Segue os dados para pagamento da hospedagem:<br />
<br />
<strong>Plano escolhido: </strong>Hospedagem Anual R$ 540,00.<br />
<strong>Início do plano:</strong> A partir da data do pagamento.<br />
<br />
<strong>Contas Bancarias:</strong><br />
<div style="float: left; width: 50%;">
Santander<br />
CC.: 01016139-1<br />
Ag.: 2132<br />
Favorecido: Raphael Augusto Almeida Pereira<br />
<br />
</div>
<div style="float: left; width: 50%; margin-bottom: 10px;">
Caixa Econômica Federal<br />
C.: 1435-9 <br />
Ag.: 1342<br />
Op.: 013<br />
Favorecido: Raphael Augusto Almeida Pereira<br />
</div>
Mais informações entrar em contato no raphael@artspeck.com.br.
</span>
</div>
-->
</body>
</html>
