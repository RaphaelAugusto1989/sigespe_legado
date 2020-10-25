<?php
// This script was created by phpMyBackupPro v.2.4 (http://www.phpMyBackupPro.net) | Adaptador por Montepage
// In order to work probably, it must be saved in the directory .
$_POST['db']=array("sigepe_bd", );
$_POST['tables']="on";
$_POST['data']="on";
$period=(3600*24)/4;
$security_key="f21c0d5252b67c94096d558faea6368a";
// switch to the phpMyBackupPro v.2.4 directory
@chdir("/usr/local/apache/htdocs");
@include("bkp/backup.php");
// switch back to the directory containing this script
@chdir("bkp/export/");
?>