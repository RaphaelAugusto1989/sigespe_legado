<?php
	session_start();
	require 'config.php';
  	require 'connection.php';
  	require 'database.php';
	
	$cod = $_GET['id'];
	
			$excluir = DBExcluir('produto', 'id_produto = "'.$cod.'"');
				if ($excluir == true) {
					echo "<script> alert ('PRODUTO EXCLUIDO COM SUCESSO!') </script>";
					echo "<script> location.href=('../visualiza_linhas.php')</script>";
				}
				else {
					echo "<script> alert ('PROBLEMA AO EXCLUIR PRODUTO, TENTE NOVAMENTE!')</script>";
					echo "<script> location.href=('../visualiza_linhas.php')</script>";
				}
	
?>