<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/style/style1.css">
    <script src="https://kit.fontawesome.com/927b94a7cf.js" crossorigin="anonymous"></script>
    <title>Se connecter</title>
</head>
<body>
    <style>
        body{
            /*background-image: linear-gradient(90deg, rgba(201,63,63,1) 0%, rgba(0,0,0,1) 50%, rgba(201,63,63,1) 100%),url(images/background-login.jpeg);*/
            width:100%;
            height:100vh;
            background-image: linear-gradient(1deg, rgba(0,0,0,1) 0%, rgba(126,159,195,0.3435749299719888) 100%),url('images/background-login.jpeg');
            background-size: cover;
            background-position: center;
        }
   
    </style>
        
        <header>
        <div id="logo">
            <img src="images/logo-cinema.png" alt="logo1" height="%30" width="30%">
        </div>
        <ul class="navbar">
            <li><a href="index.html">Menu</a></li>
            <li><a href="index.html">Films</a></li>
            <li><a href="index.html">Cinémas</a></li>
            <li><a href="profile.php" class="btn"><i class="fa-regular fa-user"></i></a></li>

        </ul>
    </header>
  
    

<br><br><br><br><br>
<div class="wrapper">
    <div class="form-box login">
        <h2>SE CONNECTER</h2>
        <form  class="form" action="include/login_script.php" method="post">
            <div class="input-box">
                <span class="icon"><i class="fa-solid fa-envelope"></i></span>
                <input class="mail" type="text" name="email" placeholder="Email" ><br>
                <!--<label>Email</label>-->
            </div>
            <div class="input-box">
                <span class="icon"><i class="fa-regular fa-lock"></i></span>
                <input class="pwd" type="password" name="mdp" placeholder="mot de passe"><br>
                <!--<label>Password</label>-->
            </div>
            <button type="submit" name="submit" class="btn-login">CONNEXION</button>
            <div class="login-register">
                <p>Vous n'avez pas de compte? <a href="signup.php" class="register-link">Créer votre compte</a></p>
            </div>
        </form>
    </div>
</div>



<!-- affichage des messages d'erreurs contenus dans l'url -->
<?php
    if(isset($_GET["error"])){
       
        switch($_GET["error"]){
            case "emptyinput":
                echo "<p class='errror'><b>Erreur : Veuillez renseigner tous les champs !</b></p>";
                break;
            case "unknownemail":
                echo "<p class='errror'><b>Erreur : Aucun compte ne correspond à cette adresse mail !</b></p>";
                break;
            case "wrongpwd":
                echo "<p class='errror'><b>Erreur : Mot de passe invalide !</b></p>";
                break;
            case "sqlerror":
                echo "<p class='errror'><b>Erreur : Une erreur est survenue, veuillez réessayer.</b></p>";
                break;
        }
    }

?>

</body>
</html>