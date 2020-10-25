<?php 
$pasta = 'backupBd/';
$date = strtotime('-2 day', mktime());
$i = 0;

foreach(glob($pasta.'*.sql') as $file) {
	$filetime = filemtime($file);
	$i++;
	
	if( $date > $filetime )	{
		unlink($file);
		echo $i. ' - '.$file.' foi apagado com sucesso.<br />';
	}
	else {
		echo '<br />'.$file . ' Não foram apagados!<br />';
	}
}
?>