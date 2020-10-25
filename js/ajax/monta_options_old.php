<?php
require '../../processos/config.php';
require '../../processos/connection.php';
require '../../processos/database.php';

$arrayCidade = array();


if($_POST["ordem"]=="monta_sub_categorias"){
    //A REQUISIÇÃO AJAX PEDIU PRA MONTAR O OPTION DE UM SELECT DE SUBCATEGORIA
    
    $idCategoria = $_POST["categoria"];
	$idEntrega = $_POST["entrega"];
	
	$idCategoria = $_POST["categoria"];
    
    $entrega = $_POST["dataEscolhida"];
    $explodeData = explode("-",$entrega);
    $dataSaida = $explodeData[2].'/'.$explodeData[1].'/'.$explodeData[0];
    
    //VOU FAZER POR IF E ESLSE PRA VC SÓ TER UMA NOÇÃO,
	
							
   	$le_condicoes = DBRead ('condicoes_pagamentos', "WHERE cod_condicoes = '$idCategoria'", '*');
    
	foreach ($le_condicoes as $cond){
		$parcela = $cond['parcelas'];
		
		if ($cond['primeira_condicao'] !== '0') {
					$dataParcela = date('d/m/Y', strtotime("+".$cond['primeira_condicao']." days", strtotime($entrega)));
				} else { $primeira_parcela = "";}
				
				if ($cond['segunda_condicao'] !== '0') {
					$dataParcela = date('d/m/Y', strtotime("+".$cond['segunda_condicao']." days", strtotime($entrega)));
				} else { $segunda_parcela = "";}
				
				if ($cond['terceira_condicao'] !== '0') {
					$dataParcela = date('d/m/Y', strtotime("+".$cond['terceira_condicao']." days", strtotime($entrega)));
				} else { $terceira_parcela = "";}
				
				if ($cond['quarta_condicao'] == '0') {
					$dataParcela = "";
					
				} else { 
					$dataParcela = date('d/m/Y', strtotime("+".$cond['quarta_condicao']." days", strtotime($entrega)));
				}
				
				if ($cond['quinta_condicao'] !== '0') {
					$dataParcela = date('d/m/Y', strtotime("+".$cond['quinta_condicao']." days", strtotime($entrega)));
				} else { $dataParcela = "";}
				
    //VOU FAZER POR IF E ESLSE PRA VC SÓ TER UMA NOÇÃO,
	$html = "$parcela";
    $html = "<ul>";
    if($idCategoria == $cond['cod_condicoes']){
        
        $html .= "$primeira_parcela - $segunda_parcela - $terceira_parcela -  
		$quarta_parcela - $quinta_parcela";
    
    } else{
        $html .=  "<li>Nenhum resultado encontrado</li>";
    }
    
    $html.="<ul>";
    
    /** MAS O CERTO É VC RECEBER A VARIAVEL CATEGORIA (POR EXEMPLO) E FAZER UMA CONSULTA
    NA TABELA SUBCATEGORIAS, POR EXEMPLO.. AI NO WHILE VC VAI INCREMENTANDO A VARIAVEL.
        
        ABAIXO O CODIGO DA CONSULTA (EXEMPLO)
        
        $sql = "SELECT id, nome FROM subcategorias WHERE categoria = '$idCategoria' ORDER BY nome ASC";
        $res = mysql_query($sql) or die(mysql_error());
        while($row = mysql_fetch_object($res)){
            $html .= "<li>{$row->nome}</li>";
        }
    
    */
     
    
}
/**
 * Aqui vc dá o echo na variavel $html. Esta echo é o retorno do ajax. 
 * Ele vai alimentar a variável FUNCTION do arquvio index.js - linha 16
 * */
echo $html;exit;
}
?>