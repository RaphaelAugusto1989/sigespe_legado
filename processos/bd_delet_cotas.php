<?php
	session_start();
	require 'config.php';
  	require 'connection.php';
  	require 'database.php';
	
	$cod = $_GET['id'];
	
			$excluir = DBExcluir('cotas', 'id_cotas = "'.$cod .'"');
				if ($excluir == true) {
					echo "<script> alert ('COTA EXCLUIDA COM SUCESSO!') </script>";
					echo "<script> location.href=('../visualiza_cotas.php')</script>";
				}
				else {
					echo "<script> alert ('PROBLEMA AO EXCLUIR COTA, TENTE NOVAMENTE!')</script>";
					echo "<script> location.href=('../visualiza_cotas.php')</script>";
				}
	
?>