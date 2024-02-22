<?php
    session_start();
    /* Falls Aufruf von Login-Seite */
    if(isset($_POST["n"])){
        /* Falls Name und Passwort korrekt */
        if($_POST["n"] == "Hans" && $_POST["p"] == "bingo" || $_POST["n"] == "Gerd" && $_POST["p"] == "tango"){
            $_SESSION["n"] = $_POST["n"];
        }
    }
    /* Kontrolle, ob innerhalb der Session */
    if(!isset($_SESSION["n"]))
        exit("<a>Kein Zugang<br><a href='sc_schutz_a.php'" . "Zum Login</a></p>");
?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Titel</title>
</head>
<body>
<h3>Intro-Seite</h3>
<?php
    /* Begrüßung des Benutzers */
    echo "<p>Hallo " . $_SESSION["n"] . "</p>";
?>
<p><a href="sc_schutz_c.php">Zur beliebigen Seite</a></p>
<p><a href="sc_schutz_a.php">Logoff</a></p>
</body>
</html>