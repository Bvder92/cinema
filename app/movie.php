<?php

//si on arrive sur cette sans avoir cliqué sur un film, on renvoie à la liste des films.
if (!isset($_GET["movie"])) {
    header("location: include/redirect.php?dest=index.php");
    exit();
}

if (isset($_GET["error"])) {
    if ($_GET["errror"] == 1) {
        echo "<script>alert('Une erreur est survenue')</script>";
        header("location: index.html#films");
        exit();
    }
    if ($_GET["errror"] == 0) {
        echo "<script>alert('Séance réservée avec succès')</script>";
    }
}

session_start();
include_once 'include/header.php';
$logedIn = true;
if (!isset($_SESSION["IdClient"])) {
    $logedIn = false;
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
    <script src="https://code.jQuery.com/jquery-3.6.0.min.js"></script>
    <title>Réserver un film</title>
</head>
    
<script defer src = "include/ordermovie.js" >
</script>

<body>

    <script>
        //script pour la navbar qui devient opaque 
        let header = document.querySelector('header');

        window.addEventListener('scroll', () => {
            header.classList.toggle('shadow', window.scrollY > 0);
        });
    </script>
    <?php

    //on arrive sur cette page en cliquant sur le bouton 'réserver' d'un film.
    //on va donc faire choisir à l'utilisateur un cinéma qui propose le film.


    include_once 'include/header.php';  //inclure le header 
    require_once 'include/bdd_script.php'; //pour la variable $conn
    require_once 'include/functions.php';  //au cas ou
    require_once 'include/Film.php';       //pour la classe Film



    $film = new Film($_GET["movie"], $conn);
    $array = array(); //tableau qui va contenir toutes les lignes de la table Séance
    $array = $film->getSeances(); //tableau de tableaux, chaque entrée est un tableau
    echo '<span id="' . $film->getId() . '"></span>'; //on crée ce span vide pour récupérer l'id du film dans JS
    echo "<br><br><br><br><br><br><br>";
    ?>

    <!-- AFFICHAGE DES INFOS DU FILM (NOM, IMAGE, ETC) -->
    <div class="movie-order">
        <div class="film-details">
            <img class="film-image" src="<?php echo $film->getImage(); ?>" alt="<?php echo $film->getNom(); ?>" width="200" height="275">

            <h1 class="film-title"><?php echo $film->getNom(); ?></h1>
            <div class="film-info">
                <span> <?php echo $film->getProducteur(); ?> </span>
                <div class="tags">
                    <span><?php echo $film->getGenre(); ?></span>
                    <span><?php echo $film->getDuree(); ?></span>
                    <span><?php if ($logedIn == true) {
                                echo "Loged in";
                            } else {
                                echo "Loged out";
                            } ?></span>
                    <span><?php echo "Séances Disponibles: " . count($array); ?></span>
                </div>
            </div>
            <div class="play-icon">
                <i class="fa-regular fa-play"></i>
            </div>
        </div>
    </div>

    <!--  AFFICHAGE DES SÉANCES -->

    <div class="titre">
        <h2>Séances Disponibles</h2>
    </div>

    <?php

    for ($i = 0; $i < count($array); $i++) {
        $IdSéance = $array[$i][0];
        $DateSéance = $array[$i][1];
        $RefFilm = $array[$i][2];
        $RefCine = $array[$i][3];

        echo '<div id="div' . $i . '" style="background-color: red;"><h4>' . getNomCine($conn, $RefCine) . '</h4><p>' . $DateSéance . '</p></div><br>';
    }

    ?>

    <div id="result">
        <button disabled>Réserver</button>
    </div>
</body>

</html>