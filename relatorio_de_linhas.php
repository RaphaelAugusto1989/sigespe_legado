<?php  require "sessao_time.php"; ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sem título</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<form action="pagina_relatorio_produtos.php" method="post" target="_blank">
  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
  	<tbody>
    	<tr>
      		<td height="42" colspan="4" align="center" valign="top">
      		<span class="titulo">Relatório de Produtos</span>
      		</td>
    	</tr>
    	<tr>
      		<td height="42" colspan="2">
            Por Produto:
      	<select name="nome_produto" class="select" style="width: 95%;">
              <option value="todos"> Todos </option>
        <?php
        	require 'processos/config.php';
  		  	require 'processos/connection.php';
  		  	require 'processos/database.php';
        //LÊ DADOS DO BANCO
        $produto = DBRead ('produto', 'ORDER BY nome_produto ASC', 'DISTINCT nome_produto');

        foreach ($produto as $pd){
          
        ?>
            <option><?php echo $pd['nome_produto']; ?></option>
        <?php
        }
        ?>
          </select>
      		</td>
            <td width="282">
            Por Modelo:
            <select name="tipo_produto" class="select" style="width: 95%;">
              <option value="todos"> Todos </option>
        <?php
        //LÊ DADOS DO BANCO
        $tipo = DBRead ('produto', 'ORDER BY tipo_produto ASC', 'DISTINCT tipo_produto');

        foreach ($tipo as $tp){
          
        ?>
            <option><?php echo $tp['tipo_produto']; ?></option>
        <?php
        }
        ?>
          </select>
            </td>
            <td width="322">
            Por Fornecedor:
    <select name="fornecedor_produto" class="select" style="width: 95%;">
        <option value="todos"> Todos </option>
        <?php
        //LÊ DADOS DO BANCO
        $produto = DBRead ('produto', 'ORDER BY fornecedor_produto ASC', 'DISTINCT fornecedor_produto');

        foreach ($produto as $pd){
          
        ?>
        <option><?php echo $pd['fornecedor_produto']; ?></option>
        <?php
        }
        ?>
    </select>
            </td>
    	</tr>
    	<tr>
      		<td height="78" colspan="4" align="center">
      		<input type="submit" value="Visualizar" class="botton">
      		</td>
    	</tr>
  	</tbody>
  </table>
</form>
</body>
</html>
