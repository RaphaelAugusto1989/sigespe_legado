<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<style type="text/css">
	body {
		font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;
	}

	p {
		font-size: 13px;
	}

	.email {
		width: 80%;
		height: 20px;
		padding: 3px;
		margin-top:  10px;
	}

	.botton_esqueci {
		width: 15%;
		height: 30px;
	}
	</style>
</head>
<body>
<?php
require 'processos/config.php';
require 'processos/connection.php';
require 'processos/database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
		
	//RECEBE DADOS DO FORMULARIO
	$email = test_input($_POST["email"]);
	
	//LÊ DADOS DO BANCO
	$usuario = DBRead ("usuario", "WHERE email_usuario = '$email'", "id_usuario, nome_usuario, cpf_usuario, email_usuario");

	
}
	function test_input($data) {
   		$data = trim($data);
   		$data = stripslashes($data);
   		$data = htmlspecialchars($data);
   		return $data;
	}

foreach ($usuario as $user) {
	$email_bd = $user['email_usuario'];


	if ($email != $email_bd) {
		echo "<b style='color: #B50003;'>E-mail não cadastrado, insira um e-mail valido! </b>";
		exit;
	}
 
// Corpo E-mail
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
<div style='width: 100%; height: 60px; background-color: #434343; background: -webkit-linear-gradient(#434343, #686868); background: -moz-linear-gradient(#434343, #686868);	background: -o-linear-gradient(#434343, #686868); background: -ms-linear-gradient(#434343, #686868); background: linear-gradient(#434343, #686868); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15); padding: 10px 20px 0 20px; margin-bottom: 20px;'>

<img src='http://www.artspeck.com.br/imagens/logo_sigepe.png' width='27%'>
</div>
<table width='100%' border='0' cellpadding='1' cellspacing='1' charset='utf-8'>
	<tr>
	<td height='75' valign='top' style='font-size:26px; color: #969696;'> 
    	<b>Solicitação de Redefinição de Senha</b>
    </td>
</tr>
<tr>
	<td> 
    	<b>Prezado(a) ".$user['nome_usuario']."</b> <br/>
        <p>
        Registramos um pedido de redefinição de senha. Caso você não tenha feito essa solicitação, por favor, desconsiderar este e-mail.
        Caso tenha solicitado a redefinição, clique no botão a baixo ou copie e cole o link em seu navegador.
        </p>
        <p>Copiar link:http://192.185.215.1/~sigepe/securitynewpass_14484652_319570448405204_5034125318777985238_n.php?id=".$user['id_usuario']."</p> 
        <center>
        <br/>
        <br />
        <div style=' width: 300px; height: 40px; border-radius: 10px 10px 10px 10px; background-color: #C80003; text-align:center; color: #FFFFFF; font-size: 20px; padding-top: 15px;'>
        <a href='http://192.185.215.1/~sigepe/securitynewpass_14484652_319570448405204_5034125318777985238_n.php?id=".$user['id_usuario']."' target='_blank' style='text-decoration: none; color: #FFFFFF; margin-top: 20px;'>Alterar Senha</a>
        </div>
        </center>
    </td>
</tr>
</table>
</html>
	";

// -------------------------

//enviar
	
	// emails para quem será enviado o formulário
	$destino = $user['email_usuario'];
	$assunto = "Solicitação de troca de senha.";
	
	// É necessário indicar que o formato do e-mail é html
	$headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
    $headers .= 'From: '."Sistema SIGEPE <naoresponder@sigepe.com.br>";
   	//$headers .= "Bcc: $EmailPadrao\r\n";
		
	$enviaremail = mail($destino, $assunto, $arquivo, $headers);

	if ($enviaremail == true) {
		echo "<b style='color: #00831B;'>Solicitação enviada com sucesso!</b><br /> <span style='font-size: 12px; color:hsla(359,100%,39%,1.00); margin-top: 10px;'>ATENÇÃO: Verifique se o e-mail esta na caixa de entrada, na caixa de spam ou lixo eletronico! </span><br />"; exit;
	}
	else {
		echo "<span style='color: #B50003;'>Erro na solicitação, favor entrar em contato com o administrador do sistema! </span>";
	} exit;

}

?>
<h4>Recuperar Senha</h4>
<p>Você receberá em seu e-mail instruções para recuperar sua senha de acesso.</p>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST">
	<input type="text" name="email" class="email" placeholder="E-mail"></input>
	<input type="submit" value="Enviar" class="botton_esqueci"></input>
</form>
</body>
</html>