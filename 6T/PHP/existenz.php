<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Titel</title>
</head>
<body>
<?php
    if (isset($preis))  echo "1: $preis <br>";
    else                echo "1: Nicht vorhanden <br>";

    $preis = 1.02;
    if (isset($preis))  echo "2: $preis <br>";
    else                echo "2: Nicht vorhanden <br>";

    unset($preis);
    if (isset($preis))  echo "3: $preis <br>";
    else                echo "3: Nicht vorhanden <br>";

    $preis = 1.02;
    if (isset($preis))  echo "4: $preis <br>";
    else                echo "4: Nicht vorhanden <br>";

    $preis = null;
    if (isset($preis))  echo "5: $preis <br>";
    else                echo "5: Nicht vorhanden";
?>
</body>
</html>