<?php
require '../../processos/config.php';
require '../../processos/connection.php';
require '../../processos/database.php';


if($_POST["ordem"]=="monta_sub_categorias"){
    
    //A REQUISIÇÃO AJAX PEDIU PRA MONTAR O OPTION DE UM SELECT DE SUBCATEGORIA
    //CRIO UM ARRAY DE PARCELAS e de RESULADO VAZIO
    $arrayParcelas = $arrayResultado = array();
    $arrayResultado["totalParcelas"] = 0;

    $idCategoria = $_POST["categoria"];
	$idEntrega = $_POST["entrega"];
	
    $entrega = $_POST["dataEscolhida"];
    $explodeData = explode("-",$entrega);
    $dataSaida = $explodeData[2].'/'.$explodeData[1].'/'.$explodeData[0];
    
    //VOU FAZER POR IF E ESLSE PRA VC SÓ TER UMA NOÇÃO,
	
							
   	$le_condicoes = DBRead ('condicoes_pagamentos', "WHERE cod_condicoes = '$idCategoria'", 'primeira_condicao, segunda_condicao, terceira_condicao, quarta_condicao, quinta_condicao');
    //echo '<pre>';
	//echo'<pre>'; print_r($le_condicoes); echo"\n Entrega: ".$entrega."\n";
    //CRIO UM CONTADOR COMEÇANDO COM 1 PQ A PRIMEIRA PARECELA é 1 . PS: Dã! haha
    $contador = 1;
	
    //VARRENDO AS PARECELAS
    //SUBSTITUI AS VARIAVEIS 1, 2, 3, 4 e 5 PARCELA POR VARIAVEL PARCELA. ESSA VARIAVEL SERA USADA PRA ALIMENTAR O ARRAY
    
	//a variavel cond já é o valor das parcelas ... qndo a gente fez o foreahc passando primeiraparcela segunda terceira e quarta como indices 
	
	
	foreach ($le_condicoes[0] as $cond){
		//echo'PRINT DA VARIAVEL COND PERCORRIDA PELO FOREACH<pre>: ';print_r($cond); echo "\n";
		if ($cond !== '0') {
			$dataParcela = date('d/m/Y', strtotime("+".$cond."  days", strtotime($entrega)));
		} else { 
			$dataParcela = "";
        }
		/* deixei comentado pra caso vc tenha saudades do teu código, poder namora-lo
		if ($cond['primeira_condicao'] !== '0') {
			$dataParcela = date('d/m/Y', strtotime("+".$cond['primeira_condicao']."  days", strtotime($entrega)));
			$hora = date('H:i:s', strtotime("-3 hours",strtotime(date("H:i:s"))));
			
		} else { 
			$dataParcela = "";
        }
		
		if ($cond['segunda_condicao'] !== '0') {
			$dataParcela = date('d/m/Y', strtotime("+".$cond['segunda_condicao']."  days", strtotime($entrega)));
			
		} else { 
			$dataParcela = "";
        }
		
		if ($cond['terceira_condicao'] !== '0') {
			$dataParcela = date('d/m/Y', strtotime("+".$cond['terceira_condicao']."  days", strtotime($entrega)));
			
		} else { 
			$dataParcela = "";
        }
		
		if ($cond['quarta_condicao'] !== '0') {
			$dataParcela = date('d/m/Y', strtotime("+".$cond['quarta_condicao']." days", strtotime($entrega)));
			
		} else { 
			$dataParcela = "";
		}
		
		if ($cond['quinta_condicao'] !== '0') {
			$dataParcela = date('d/m/Y', strtotime("+".$cond['quinta_condicao']." days", strtotime($entrega)));
			
		} else { 
			$dataParcela = "";
        }
		*/
				
        /*VOU FAZER POR IF E ESLSE PRA VC SÓ TER UMA NOÇÃO,
    	$html = "$parcela";
        $html = "<ul>";
        if($idCategoria == $cond['cod_condicoes']){
            
            $html .= "$dataParcela";
        
        } else{
            $html .=  "<li>Nenhum resultado encontrado</li>";
        }
    	*/
        $arrayParcelas[$contador] = $dataParcela;
        
        //INCREMENTO O CONTADOR PRA VARIAR SEGUNDA PARCELA A ASSIM POR DIANTE
        $contador++;
}

//SIMULANDO A PROCURA DO BANCO DE ACORDO COM O QUE O USUARIO DIGITOU
/*if($_POST["categoria"]==1){
    $arrayParcelas[1] = '16/10/2016';
    $arrayParcelas[2] = '15/11/2016';
    $arrayParcelas[3] = '16/12/2016'; 
    $arrayParcelas[4] = ""; 
    $arrayParcelas[5] = ""; 
}else if($_POST["categoria"]==2){
    $arrayParcelas[1] = '16/10/2016';
    $arrayParcelas[2] = '15/11/2016';
    $arrayParcelas[3] = '16/12/2016'; 
    $arrayParcelas[4] = "15/01/2017"; 
    $arrayParcelas[5] = "15/02/2017";  
}else{
   //SIMULANDO COMO SE O BANCO NAO ACHASSE RESULTADO 
   $arrayResultado = array(); 
   $arrayResultado["resultado"] = "Nenhum resultado encontrado"; 
}*/


//CRIO UM ARRAY FINAL QUE SÓ LEVARA AS PARCELAS COM VALORES
//VERIFICO SE O ARRAY DE PARCELAS ESTA VAZIO PRA PODER VARRE-LO,
//CASO CONTRARIO O AJAX RETORNARA NENHUM RESULTADO ENCOTNRADO. VIDE LINHA 101.
if(!empty($arrayParcelas)){
    //VARRO O ARRAY DAS PARCELAS
    foreach($arrayParcelas as $parcelas){
        //SE A PARCELA TIVER DATA, INCLUO NO ARRAY RESULTADO
        if($parcelas <> ""){
            $arrayResultado["totalParcelas"]++;
            $arrayResultado["resultado"] .=  $parcelas.' - ';
        }
    } 
    //REMOVO OS ULTIMOS ESPACO - ESPACO 
    $arrayResultado["resultado"] = substr($arrayResultado["resultado"], 0, -3);   
}//FINAL DO FORACH.
//echo'<pre>'; print_r($arrayResultado);exit;

//RETORNO O ARRAY RESULTADO EM FORMATO JSON PRO JS PEGAR OS DADOS
$html = json_encode($arrayResultado);
/**
 * Aqui vc dá o echo na variavel $html. Esta echo é o retorno do ajax. 
 * Ele vai alimentar a variável FUNCTION do arquvio index.js - linha 16
 * */
echo $html;exit;
}
?>