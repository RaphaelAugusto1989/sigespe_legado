<?php
	session_start();
	require 'config.php';
  	require 'connection.php';
  	require 'database.php';
	
	$cod = $_GET['id'];
	
			$excluir = DBExcluir('usuario', 'id_usuario = "'.$cod .'"');
				if ($excluir == true) {
					echo "<script> alert ('USUÁRIO EXCLUIDO COM SUCESSO!') </script>";
					echo "<script> location.href=('../visualiza_usuario.php')</script>";
				}
				else {
					echo "<script> alert ('PROBLEMA AO EXCLUIR USUÁRIO, TENTE NOVAMENTE!')</script>";
					echo "<script> location.href=('../visualiza_usuario.php')</script>";
				}
	
?>