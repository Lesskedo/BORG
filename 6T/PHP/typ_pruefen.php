<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Titel</title>
</head>
<body>
<?php
    if(is_int(42))      echo "42 ist eine ganze Zahl <br>";
    if(is_int(42.0))    echo "42.0 ist keine ganze Zahl <br>"

    if(is_float(42.0))  echo "42.0 ist eine Fliesskommazahl <br>";
    if(!is_float(42))   echo "42 ist keine Fliesskommazahl <br>";

    if(is_string("42")) echo "\"42\" ist eine Zeichenkette <br>";
    if(is_string('42')) echo "'42' ist eine Zeichenkette <br>";
    if(!is_string(42))  echo "42 ist keine Zeichenkette <br>";

    if(is_numeric("42"))        echo "\"42\" ist numerisch <br>";
    if(is_numeric("42.0"))      echo "\"42.0\" ist numerisch<br>";
    if(is_numeric("-4.2e-3"))   echo "\"-4.2e-3\" ist numerisch <br>";
    if(!is_numeric("42a"))      echo "\"42a\" ist nicht numerisch <br>";

    if(is_bool(true))           echo "true ist boolean <br>";
    if(is_bool(5>3 && 7<12))    echo "5>3 && 7<12 ist boolean <br>";
    if(!is_bool("true"))        echo "\"true\" ist nicht boolean <br>";
?>
</body>
</html>
