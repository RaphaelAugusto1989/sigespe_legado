<?php

	//CONTROLA ACESSO PÚBLICO
	//function AccessPublic() {
		
	//}

	//CONTROLA ACESSO PRIVADO
	function AccessPrivate() {
		if (isset ($_SESSION["id"])){

        	echo "<strong> Usuário: </strong>";
        	echo $_SESSION ["nome"];
      }

     else {
          echo "<script> location.href = ('index.php') </script>" ;
     } 
	}

	//SETA OU RECUPERA USERLOG
	function UserLog($value = null) {
		if ($value === null)
			return $_SESSION['userLog'];
		else
			$_SESSION['userLog'] = $value;
	}

	//VERIFICA LOGIN - SESSÃO
	//function Login() {
		//if(!isset($_SESSION['userLog']) || empty($_SESSION['userLog']))
		//	return false;
	//	else
	//		return true;
//	}

	//CRIPTOGRAVAR SENHAS
	function CryptPassword($password) {
		return sha1($password);
	}

	//RECUPERA POST
	function GetPost($key = null) {
		if($key === null)
			return $_POST;
		else
			return (isset($_POST[$key])) ? $_POST[$key] : false;
	}
	
	//REDIRECIONA
	//function Redirect($url) {
		//header("location: ".$url);
		//die();
	//}

	//LIMPA STRING
	function ClearString($str) {
		return mysql_real_escape_string(strip_tags(trim($str)));
	}
