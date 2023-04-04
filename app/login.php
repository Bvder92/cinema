<h2>Se connecter</h2>

<form action="include/login_script.php" method="post">

    <input type="text" name="email" placeholder="Adresse mail">
    <input type="password" name="mdp" placeholder="Mot de passe">
    <button type="submit" name="submit">Se connecter</button>

</form>

<!-- affichage des messages d'erreurs contenus dans l'url -->
<?php
    if(isset($_GET["error"])){
       
        switch($_GET["error"]){
            case "emptyinput":
                echo "<p><b>Erreur: Veuillez renseigner tous les champs!</b></p>";
                break;
            case "unknownemail":
                echo "<p><b>Erreur: Aucun compte ne correspond à cette adresse mail!</b></p>";
                break;
            case "wrongpwd":
                echo "<p><b>Erreur: Mot de passe invalide!</b></p>";
                break;
            case "sqlerror":
                echo "<p><b>Erreur: Une erreur est survenue, veuillez réessayer.</b></p>";
                break;
        }
    }

?>
