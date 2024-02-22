<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Titel</title>
  </head>
  <body>
	<?php
	$zahl01 = 22.50;
	$zahl02 = 12.30;
	$zahl03 = 5.20;
	$bp = 1.19;
	$ergebnis = ($zahl01 + $zahl02 + $zahl03) * $bp;
	echo $ergebnis, "€";
	?> 
  </body>
</html>