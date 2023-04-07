<?php

//on arrive sur cette page en cliquant sur le bouton 'réserver' d'un film.
//on va donc faire choisir à l'utilisateur un cinéma qui propose le film.

//si on arrive sur cette sans avoir cliqué sur un film, on renvoie à la liste des films.
if (!isset($_GET["movie"])){
    header("location: index.html#films");
    exit();
}

if (isset($_GET["error"])){
    if ($_GET["errror"] == 1) {
        echo "<h1>Une erreur est survenue</h1><br><br>";
        exit();
    }
}

require_once 'include/bdd_script.php'; //pour la variable $conn
require_once 'include/functions.php';  //au cas ou
require_once 'include/Film.php';       //pour la classe Film


$film = new Film($_GET["movie"], $conn);


echo "<h2>" . $film->getNom() . "</h2>";

echo "<h4>" . $film->getProducteur() . "</h4>";

?>

