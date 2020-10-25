<?php
date_default_timezone_set('America/Sao_Paulo');
$hora_do_dia=date("H");
 
/*Cumprimento no sistema*/
if (($hora_do_dia >=1) && ($hora_do_dia <12)) { $cumprimento = "Bom Dia,"; }
if (($hora_do_dia >=12) && ($hora_do_dia <18)) { $cumprimento = "Boa Tarde,"; }
if (($hora_do_dia >=18) && ($hora_do_dia <=24)) { $cumprimento = "Boa Noite,"; }
 
     if (isset ($_SESSION["login"])){
        
        echo "$cumprimento ";
        echo $_SESSION ["nome"];
 
        if ($_SESSION['time'] <= time()) {
            session_unset();
            foreach($_SESSION as $key => $value) {
                unset($_SESSION[$key]);
            }
 
           echo "<script>location.href=('pagina_expirada.php')</script>";
        } else {
            $_SESSION["time"] = time() + (60 * 20); //1 minuto
        }
      } else {
        //aqui ele simplesmente da redirect para a pagina expirada NÃO USE echo script location sem dar um DIE() na pagina
        //caso contrario parte do conteudo da pagina VAI SER exibido se o cara souber o que está fazendo
        //o comando DIE simplesmente MATA o resto de execução da pagina, ou seja, ele não vai executar nada depois disso
        echo "<script> alert('Acesso Negado!') </script>";
        echo "<script>location.href=('index.php')</script>";
         //echo "<script>location.href=('pagina_expirada.php')</script>";
      }
?>