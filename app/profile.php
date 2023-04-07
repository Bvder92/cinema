<?php
    session_start();
    if (!isset($_SESSION["IdClient"])) {
        header("location: login.php");
        exit();
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style1.css">
    <title>Accueil</title>
</head>

<body>

    <h1>Profil</h1>

    <br>

    <h2>Informations Personnelles</h2>

    <ul>
        <li>Nom: <?php echo $_SESSION["NomClient"] ?></li>
        <li>Prenom: <?php echo $_SESSION["PrenomClient"] ?></li>
        <li>Email: <?php echo $_SESSION["EmailClient"] ?></li>
    </ul>

    <br><br>
    <h2>Réservations</h2>

</body>

</html>