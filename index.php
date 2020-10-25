<?php
	session_start();
?>
<!doctype html>
<html>
	<heade>
		<meta charset="utf-8">
		<title>.::SIGESPE::.</title>
			<link href="css/style.css" rel="stylesheet" type="text/css">
	</heade>
	<body id="index">
    <div id="artspeck">
        Desenvolvidor por: 
            <a href="http://www.artspeck.com.br" target="_blank">
              <img src="imagens/artspeck.png" width="90" height="22" border="0" style="margin-left: 5px;" />
            </a>
</div>
	<?php
		require 'processos/config.php';
		require 'processos/connection.php';
		require 'processos/database.php';
		
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
	echo "<script>	alert ('Infelizmente o SIGEPE ainda não tem suporte à este navegador, por favor utilize um navegador recomendado!')	</script>";
	echo "<script> location.href = ('navegadores_recomendado.php') </script>";
	exit ();
}
if (get_browser_name($_SERVER['HTTP_USER_AGENT']) == 'Safari') {
	echo "<script>	alert ('Infelizmente o SIGEPE ainda não tem suporte à este navegador, por favor utilize um navegador recomendado!')	</script>";
	echo "<script> location.href = ('navegadores_recomendado.php') </script>";
	exit ();
}

	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		
	//RECEBE DADOS DO FORMULARIO
	$login = test_input($_POST["login"]);
	$senha = test_input($_POST["senha"]);

	if ($login == "") {
			
			echo "<script>	alert ('você não digitou o Usuário!')	</script>";
			echo "<script> location.href = ('index.php') </script>";
			exit ();
		}
		
		if ($senha == "") {
			
			echo "<script>	alert ('você não digitou a senha!')	</script>";
			echo "<script> location.href = ('index.php') </script>";
			exit ();
		}

	//LÊ DADOS DO BANCO
	$user = DBRead ('usuario', "WHERE login_usuario = '$login' AND senha_usuario = '$senha'", 'id_usuario, nome_usuario, tipo_usuario, login_usuario');
	
	// Quantidade de registros pra paginação
	

foreach ($user as $us) {
	
   	$nome_user = $us["nome_usuario"];
  	$id_usuario = $us["id_usuario"];
		
	}

	if ($user == true) {

		$_SESSION ["time"] = time() + (60 * 1); //1 minuto
		$_SESSION ["login"] = $login;
		$_SESSION ["nome"] = $us["nome_usuario"];
		$_SESSION ["id_user"] = $us["id_usuario"];
		$_SESSION ["tipo"] = $us["tipo_usuario"];

		echo "<script>location.href=('sigepe.php')</script>";
	}
	else { 
		echo "<center><b style='color: #B50003; position: absolute; top: 20%; left: 43%;'>Falha na Autenticação, <br />Login ou Senha Incorretos!</b></center>";	
	}
}

	function test_input($data) {
   		$data = trim($data);
   		$data = stripslashes($data);
   		$data = htmlspecialchars($data);
   		return $data;
	}

		
	?>
		<div id="login">
		<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST" enctype="multipart/form-data">
		<table width="70%" cellpadding="0" cellspacing="0" id="table_login">
			<tbody>
				<tr>
					<td align="center" valign="middle">
						<div class="titulo_login">
							<img src="imagens/login.png" width="90%">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="table_linha_login">
							<img src="imagens/cadeado.png" class="img_login">	
							<input type="text" name="login" class="login_text" placeholder="Login">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="table_linha_login">
						<img src="imagens/chave.png" class="img_login">
						<input type="password" name="senha" class="login_text" placeholder="Senha">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Entrar" class="botton_login"></input>
					</td>
				</tr>
				<tr>
					<td>
						<nav class="senha">
							<ul>
								<li><a href="esqueci_senha.php" target="minha_senha"> Esqueceu sua senha?</a></li>
							</ul>
						</nav>
						<iframe src="branco.php" name="minha_senha" id="minha_senha"></iframe>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
        <div id="rodape_index">
         <b> ©2016 - Sistema de Gerenciamento de Pedidos / SIGEPE. Todos os direitos reservados.</b> <span style="margin-left: 30px;">Versão 1.8</span>
        <div id="navegadores">
        Navegadores Recomendado para uso: 
        	<img src="imagens/icon_opera.png" class="browsers" title="Opera">
        	<img src="imagens/icon_chrome.png" class="browsers" title="Google Chrome">
        	<!--<img src="imagens/icon_firefox.png" class="browsers" title="Mozila Firefox"> -->
        	<img src="imagens/icon_ie.png" class="browsers" title="Internet Explorer 11">
        	<img src="imagens/icon_edge.png" class="browsers" title="Microsoft Edge">
        </div>
	</body>
</html>