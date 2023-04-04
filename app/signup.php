<h2>S'inscrire</h2>

<form action="include/signup_script.php" method="post">

    <input type="text" name="nom" placeholder="Nom">
    <input type="text" name="prenom" placeholder="Prénom">
    <input type="text" name="email" placeholder="Adresse mail">
    <input type="password" name="mdp" placeholder="Mot de passe">
    <input type="password" name="remdp" placeholder="Retaper mot de passe">
    <button type="submit" name="submit">S'inscrire</button>

</form>

<!-- affichage de messages d'erreur en fonction de l'url -->
<?php
    if(isset($_GET["error"])){
       
        switch($_GET["error"]){
            case "emptyinput":
                echo "<p><b>Erreur: Veuillez renseigner tous les champs!</b></p>";
                break;
            case "invalidemail":
                echo "<p><b>Erreur: Veuillez renseigner une adresse mail valide!</b></p>";
                break;
            case "pwdmatch":
                echo "<p><b>Erreur: Les mots de passe ne sont pas identiques!</b></p>";
                break;
            case "emailtaken":
                echo "<p><b>Erreur: Cette adresse mail est déjà utilisée pour un autre compte!</b></p>";
                break;
            case "sqlerror":
                echo "<p><b>Erreur: Une erreur est survenue, veuillez réessayer.</b></p>";
                break;
            case "none":
                echo "<p><b>Votre compte a été crée avec succès, bienvenue!</b></p>";
                break;
        }
    }

?>