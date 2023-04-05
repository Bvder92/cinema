<?php session_start();?>

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
    <h1>Bienvenue sur le site</h1>
    <?php 
    
    if(!isset($_SESSION["IdClient"])){
        echo "<ul><li><a href=\"signup.php\">S'inscrire</a></li><li><a href=\"login.php\">Se connecter</a></li> </ul>";
    }
    else{
        echo '<h1>Bienvenue, ' . $_SESSION["PrenomClient"] . '!</h1>';
        echo '<a href="include/logout_script.php"><u>Déconnexion</u></a>';
    } 
    
    ?> 
</body>

</html>