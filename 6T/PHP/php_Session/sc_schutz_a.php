<?php
    /* Vor Beenden der Sesseion wieder aufnehmen */
    session_start();
    /* Beenden der Session */
    session_destroy();
    $_SESSION = array();
?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Titel</title>
</head>
<body>
<h3>Login-Seite</h3>
<form action="sc_schutz_b.php" method="post">
    <p><input name="n"> Name</p>
    <p><input type="password" name="p"> Passwort</p>
    <p><input type="submit" value="Login"></p>
</form>
</body>
</html>