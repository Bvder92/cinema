<?php
    session_start();
    include_once 'include/header.php';
    if(!isset($_SESSION["IdClient"])){
        echo '<script>alert("Veulliez vous connecter pour accéder à cette page (pour l\'instant);</script>';
    }
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/style/style1.css">
    <script src="https://kit.fontawesome.com/927b94a7cf.js" crossorigin="anonymous"></script>
    <title>Réserver un film</title>
</head>
<body>

    <?php

    //on arrive sur cette page en cliquant sur le bouton 'réserver' d'un film.
    //on va donc faire choisir à l'utilisateur un cinéma qui propose le film.

    //si on arrive sur cette sans avoir cliqué sur un film, on renvoie à la liste des films.
    if (!isset($_GET["movie"])){
        header("location: index.html#cinema");
        exit();
    }

    if (isset($_GET["error"])){
        if ($_GET["errror"] == 1) {
            echo "<script>alert('Une erreur est survenue')</script>";
            header("location: index.html#films");
            exit();
        }
        if ($_GET["errror"] == 0) {
            echo "<script>alert('Séance réservée avec succès')</script>";
        }
    }


    require_once 'include/bdd_script.php'; //pour la variable $conn
    require_once 'include/functions.php';  //au cas ou
    require_once 'include/Film.php';       //pour la classe Film


    $film = new Film($_GET["movie"], $conn);
    $url = "ordermovie.php/movie=" . $film->getId();

    echo "<h2>" . $film->getNom() . "</h2>";
    echo "<p>" . $film->getProducteur() . " <br> " . $film->getGenre() . " | " . $film->getDuree() . "</p>";
    echo "<br><img src=\"" . $film->getImage() . "\">";

    echo "<br><br><h2>Séances Disponibles</h2><br>";

    ?>

    <form action="" method ="post">

        <label for="sort">Tri par date </label>
        <select name="sort" id="sort">
            <option value="Défaut">Défaut</option>
            <option value="Croissant">Récent -> Ancien</option>
            <option value="Décroissant">Ancien -> Récent</option>
        </select>
        <input type="submit" name="submit" value="trier">
    </form>

    <?php


    $sort = "Défaut";
    if(isset($_POST["submit"])){
        $sort = $_POST["sort"];
    }
    echo "Vous avez choisi " . $sort . "<br><br>";
    $array = array();
    //array[x][0] = IdSéance, [x][1] = DateSéance, [x][2] = RefFilm, [x][3] = RefCine
    $array = $film->getSeancesArray(); //tableau de tableaux, chaque entrée représente une ligne de la table Séances
    
    echo '<h2>Séances Disponibles</h2><br><ul>';
    for ($i = 0; $i<count($array); $i++){
        echo "<li>" . getNomCine($conn, $array[$i][3]) . ", " . $array[$i][1];
        //echo ' <form method="post"><input type="submit" name="reserver' . $i .'" value="Réserver"></form></li>';
        showButton($conn, $_SESSION["IdClient"], $array[$i][0], $i);
        
        //si le bouton "Réserver a été pressé, on réserve la séance
        if(isset($_POST["reserver" . $i])){
            reserverSeance($conn, $_SESSION["IdClient"], $array[$i][0]);
            echo '<p>Vous avez réservé la séance' . $array[$i][0] . ' ( ' . $array[$i][1] . ' )</p>';
        }
    }
    echo "</ul>";

    ?>

</body>
