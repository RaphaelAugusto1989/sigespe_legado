<?php
if (!isset($_SESSION)) {
     session_start();
}

        if ($_SESSION['time'] <= time()) {
            session_unset();
            foreach($_SESSION as $key => $value) {
                unset($_SESSION[$key]);
            }
          echo "<script>location.href=('pagina_expirada.php')</script>";
        } else {
            $_SESSION["time"] = time() + (60 * 20); //1 minuto
        }

?>