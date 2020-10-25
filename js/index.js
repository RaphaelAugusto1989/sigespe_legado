$(function(){ // � A FUN��O PRINCIPAL. COLOCA TODOS OS EVENTOS QUE PRECISAR DENTRO DELA.
    
    //EVENTO KEY UP DA CATEGORIA
    $(document).on("keyup","#categoria",function(){ //CADA VEZ QUE VC digitar o valor DE CATEGORIA ELE FAR� A FUN��O ABAIXO
        $("#subCategoria").html(""); //ZERO O HTML DE SUBCATEGORIA
        $("#btnSalvar").fadeOut("slow"); //Escondo o bot�o de salvar.
    
		var dataInput = $("#data").val();
		$("#parcela").html("");
		
        var idCategoria = $(this).val(); //RETORNA O VALOR DA CATEGORIA ESCOLHIDA
        if(idCategoria>0){ //SE A CATEGORIA FOR MAIOR QUE ZERO, FA�A UMA CONSULTA NO ARQUIVO monta_options.php 
                        //LOCALIZADO DENTRO DA PASTA JS/AJAX
                        //ESSA REQUISI��O AJAX SER� FEITA VIA POST (linha 17)
                        //PASSANDO OS DADOS ORDER (SERIA UMA ORDEM PARA O MONTA_OPTIONS.PHP EXECUTAR) e O id da CATEGORIA. (Linha 9)
            
            $.ajax({
                    url: 'js/ajax/monta_options.php',
                    type: "POST",
                    data: {            
                        ordem  : "monta_sub_categorias",
                        categoria: idCategoria, 
                        dataEscolhida: dataInput
                    },
                    cache: false,
                    success: function(resultado){     
						
                        // RESULTADO = � O RETORNO DA CONSULTA FEITA VAI AJAX.
                        
                        //A VARIAVEL DADOS PEGA O RESUTLADO DO AJAX (QUE EH UM JSON) E DA UM PARSE.
                        //COMO O INDICE DO ARRAY(NO MONTA OPTION � TOTALPARCELAS E RESULTADO)
                        //PRA RETORNAR OS VALORES AOS ELEMENTOS, BASTA COLCOAR A VARIAL dados.nomeDoIndice
                        //OU SEJA> PRA RETORNAR O TOTAL DE PARCELAS, BASTA COLCOAR dados.totalPercelas (LINHA 35)
                        //PRE RETORNOAR O RESULTADO COM TODAS AS DATAS, BASTA COLOCAR dados.resultado  (LINHA 36)
                        var dados = jQuery.parseJSON(resultado);
                        $("#parcela").val(dados.totalParcelas);
                        $("#subCategoria").html(dados.resultado); //ESTA LINHA DIZ: O SELECT COM O id subCategoria RECEBER� EM SEU HTML O CONTE�DO DE RESULTADO
                    },
                    beforeSend: function(){
                        //alert("Manda Bala, Garoto!");
                    },
                    error: function(xhr) { // if error occured
                        //alert("Error occured.please try again");
                    },
            }) 
        }else{
            //O JOVEM N�O DIGITOU O C�DIGO. ALERTA QUE DEVE DIGITAR
            $("#subCategoria").html();
            //COLCOAR O CURSOR NO TEXTAREA PRA DIGITAR O C�DIGO
            $("#categoria").focus();
        }
    });
    
    //SEM QUE MUDAR A DATA NO INPUT, O JAVASCRIPT DISPARA SOZINHO (TRIGGER) O EVENTO DE KEYUP DA CATEGORIA,
    //OU SEJA, DISPARA A FUN��O PARA PROCURAR O CODIGO E A DATA NO BANCO PRA VOC�.
    $(document).on("change", "#data",function(){
        $("#categoria").trigger("keyup");
    })
})