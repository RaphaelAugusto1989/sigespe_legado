<?php
	if (!isset($_SESSION)) {
     session_start();
}
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sem título</title>
</head>

<body>
<?php
     @session_start();
     @$_SESSION = array();
     @session_unset ();
     @session_destroy ();
     echo "<p>Sua sessão foi Expirada, favor <a href='index.php' target='_top'>clique aqui</a> para logar novamente! </p>";
?>

</body>
</html>

     
