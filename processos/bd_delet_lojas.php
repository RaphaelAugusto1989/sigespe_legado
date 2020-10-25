<?php
	session_start();
	require 'config.php';
  	require 'connection.php';
  	require 'database.php';
	
	$cod = $_GET['id'];
	
			$excluir = DBExcluir('lojas', 'id_lojas = "'.$cod .'"');
				if ($excluir == true) {
					echo "<script> alert ('LOJA EXCLUIDA COM SUCESSO!') </script>";
					echo "<script> location.href=('../visualiza_loja.php')</script>";
				}
				else {
					echo "<script> alert ('PROBLEMA AO EXCLUIR LOJA, TENTE NOVAMENTE!')</script>";
					echo "<script> location.href=('../visualiza_loja.php')</script>";
				}
	
?>