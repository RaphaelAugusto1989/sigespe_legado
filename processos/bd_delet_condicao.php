<?php
	session_start();
	require 'config.php';
  	require 'connection.php';
  	require 'database.php';
	
	$cod = $_GET['id'];
	
			$excluir = DBExcluir('condicoes_pagamentos', 'id_condicoes = "'.$cod .'"');
				if ($excluir == true) {
					echo "<script> alert ('CONDIÇÃO DE PAGAMENTO EXCLUIDO COM SUCESSO!') </script>";
					echo "<script> location.href=('../visualiza_condicoes_pagamento.php')</script>";
				}
				else {
					echo "<script> alert ('PROBLEMA AO EXCLUIR CONDIÇÃO DE PAGAMENTO, TENTE NOVAMENTE!')</script>";
					echo "<script> location.href=('../visualiza_condicoes_pagamento.php')</script>";
				}
	
?>