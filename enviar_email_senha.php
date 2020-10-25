<?php
session_start();

$nome = $_POST["nome"];
$fone = $_POST["fone"];
$email = $_POST["email"];
$assunto = $_POST["assunto"];
$menssagem = $_POST["msg"];
$captch = $_POST["captcha"];

if (!empty($_REQUEST['captcha'])) {
    if (empty($_SESSION['captcha']) || trim(strtolower($_REQUEST['captcha'])) != $_SESSION['captcha']) {
        echo "<script> alert ('Condigo Invalido, tente novamente!') </script>";
		echo "<script> location.href=('javascript:history.back(1);')</script>";
	}
	else {

// Compo E-mail
$arquivo = "
<style type='text/css'>
* {
	padding: 0;
	margin: 0;
}

table {
	font-family: Gotham, 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 14px;
	border: 1px solid hsla(0,0%,72%,1.00);
	border-radius: 10px  10px  10px  10px;
	padding: 20px;
	margin: 20px;
}
b {
	color: hsla(359,100%,27%,1.00);
}
span {
	color: hsla(0,0%,36%,1.00);
	font-size:14px;
}

#topo {
	width: 100%;
	height: 60px;
	background: hsla(359,100%,40%,1.00);
	padding: 0 20px 0 20px;
	margin-bottom: 20px;
}
img {
	width: 15%;
	float: left;
}
</style>

<html charset='utf-8'>
   <div style='width: 100%; height: 60px; background: hsla(359,100%,40%,1.00); padding: 0 20px 0 20px;margin-bottom: 20px;'>
<img src='http://www.colegiobiangulo.com.br/images/logo.png'>
</div>
<table width='100%' border='0' cellpadding='1' cellspacing='1' charset='utf-8'>
	<tr>
		<td align='center' style='color:hsla(359,100%,34%,1.00);'> <b>Você Recebeu uma Mensagem do seu Site!</b></td>
	</tr>
    <tr>
		<td height='30'><b>Nome:</b> <span>$nome</span></td>
	</tr>
	<tr>
		<td height='30'><b>E-mail:</b> <span>$email</span></td>
	</tr>
	<tr>
		<td height='30'><b>Telefone:</b> <span>$fone</span></td>
	</tr>
	<tr>
		<td height='30'><b>Assunto:</b> <span>$assunto</span></td>
	</tr>
	<tr>
		<td  height='auto'><b>Mensagem:</b><br />
		<span>$menssagem</span></td>
	</tr>
</table>
</html>
	";

// -------------------------

//enviar
	
	// emails para quem será enviado o formulário
	$destino = "jbiangulo@gmail.com";

	
	// É necessário indicar que o formato do e-mail é html
	$headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
    $headers .= 'From: '."$nome <$email>";
   	//$headers .= "Bcc: $EmailPadrao\r\n";
		
	$enviaremail = mail($destino, $assunto, $arquivo, $headers);

		echo "<script> alert ('Enviado com sucesso! Em breve entraremos em contato.') </script> ";
		echo "<script> location.href=('fale_conosco')</script>";
	}
}
?>
