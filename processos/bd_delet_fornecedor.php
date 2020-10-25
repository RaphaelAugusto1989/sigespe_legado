<?php
	session_start();
	require 'config.php';
  	require 'connection.php';
  	require 'database.php';
	
	$cod = $_GET['id'];
	
			$excluir = DBExcluir('fornecedor', 'id_fornecedor = "'.$cod .'"');
				if ($excluir == true) {
					echo "<script> alert ('FORNECEDOR EXCLUIDO COM SUCESSO!') </script>";
					echo "<script> location.href=('../visualiza_fornecedor.php')</script>";
				}
				else {
					echo "<script> alert ('PROBLEMA AO EXCLUIR FORNECEDOR, TENTE NOVAMENTE!')</script>";
					echo "<script> location.href=('../visualiza_fornecedor.php')</script>";
				}
	
?>