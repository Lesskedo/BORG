<?php
    /* Session-Start oder Session-Wiederaufnahme */
    session_start()
?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Titel</title>
</head>
<body>
<?php
    if(isset($_SESSION["zz"])) /* Zugriffszähler existiert */
        $_SESSION["zz"] = $_SESSION["zz"] + 1;
        else                   /* Zugriffszähler ist neu */
            $_SESSION["zz"] = 1;
        echo "Ihr Besuch Nr.: " . $_SESSION["zz"] . "<br>";
        echo "Ihre Session-ID: " . sesseion_id();
?>
</body>
</html>