<?php
	session_start();
	require 'config.php';
  	require 'connection.php';
  	require 'database.php';
	
	$cod = $_GET['id'];
	
			$excluir = DBExcluir('pedidos', 'num_pedido = "'.$cod .'"');
			$ExcluirDatas = DBExcluir('datas_pag_pedidos', 'cod_pedido = "'.$cod .'"');
				if ($excluir == true) {
					echo "<script> alert ('PEDIDO EXCLUIDO COM SUCESSO!') </script>";
					echo "<script> location.href=('../visualiza_pedido.php')</script>";
				}
				else {
					echo "<script> alert ('PROBLEMA AO EXCLUIR PEDIDO, TENTE NOVAMENTE!')</script>";
					echo "<script> location.href=('../visualiza_pedido.php')</script>";
				}
	
?>