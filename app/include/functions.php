<?php

//retourne true si l'un des champs n'a pas été rempli
function emptyInput($nom, $prenom, $email, $mdp, $remdp){
    if(empty($nom) || empty($prenom) || empty($email) || empty($mdp) || empty($remdp)){
        $res = true;
    }
    else{
        $res = false;
    }
    return $res;
}

function emptyInputLogin($email, $mdp){
    if(empty($email) || empty($mdp)){
        $res = true;
    }
    else{
        $res = false;
    }
    return $res;
}

//retourne true si l'adresse mail n'est pas une adresse valide
function invalidEmail($email){
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        $res = true;
    }
    else{
        $res = false;
    }
    return $res;
}

//retourne true si les mots de passe ne sont pas identiques
function pwdDontMatch($mdp, $remdp){
    if ($mdp !== $remdp){
        $res = true;
    }
    else{
        $res = false;
    }
    return $res;
}

//vérifie qu'il n'existe pas de compte associé à ce mail
//retourne true si le mail est déjà utilisé par un autre compte
function emailTaken($conn, $email){
    $res = false;
    $sql = "SELECT * FROM Client WHERE EmailClient = ?;";

    $statement = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($statement, $sql)){
        header("location: ../signup.php?error=sqlerror");
        exit();
    }
    mysqli_stmt_bind_param($statement, "s", $email);
    mysqli_stmt_execute($statement);

    $result = mysqli_stmt_get_result($statement);
    
    if ($row = mysqli_fetch_assoc($result)){
        $res = true;
    }
    
    mysqli_stmt_close($statement);
    return $res;
}

//ajoute une ligne à la table Client, et renvoie l'utilisateur à la page d'accueil
function createUser($conn, $nom, $prenom, $email, $mdp){

    $sql = "INSERT INTO Client(NomClient, PrenomClient, EmailClient, MdpClient) VALUES(?, ?, ?, ?);";
    $hash = password_hash($mdp, PASSWORD_DEFAULT);

    $statement = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($statement, $sql)){
        header("location: ../signup.php?error=sqlerror");
        exit();
    }
    mysqli_stmt_bind_param($statement, "ssss", $nom, $prenom, $email, $hash);
    mysqli_stmt_execute($statement);

    mysqli_stmt_close($statement);
    header("location: ../profile.php");
    exit();
}

function loginUser($conn, $email, $mdp){
    $emailTaken = emailTaken($conn, $email); //true si le mail est présent dans la db

    if ($emailTaken === false){
        header("location: ../login.php?error=unknownemail");
        exit();
    }

    $sql = "SELECT * FROM Client WHERE EmailClient = ?;";

    $statement = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($statement, $sql)){
        header("location: ../login.php?error=sqlerror");
        exit();
    }
    mysqli_stmt_bind_param($statement, "s", $email);
    mysqli_stmt_execute($statement);

    $result = mysqli_stmt_get_result($statement);
    $row = mysqli_fetch_assoc($result);
    
    $hash = $row["MdpClient"];

    //vérifie que le mot de passe saisi correspond à celui dans la bd:
    if(password_verify($mdp, $hash) === false){
        header("location: ../login.php?error=wrongpwd");
        exit();
    }

    //maintenant que l'utilisateur est connecté, on crée une session pour qu'il reste connecté
    //on crée des variables de session permettant d'accéder aux champs de l'utilisateur facilement
    session_start();
    $_SESSION["IdClient"] = $row["IdClient"];
    $_SESSION["NomClient"] = $row["NomClient"];
    $_SESSION["PrenomClient"] = $row["PrenomClient"];
    $_SESSION["EmailClient"] = $row["EmailClient"];

    header("location: ../profile.php"); //renvoie l'utilisateur à l'accueil
    exit();
}

function getNomCine($conn, $id){
    
    $sql = "SELECT * FROM Cinéma WHERE IdCine = ?;";
    $statement = mysqli_stmt_init($conn);

    if (!mysqli_stmt_prepare($statement, $sql)) {
        header("location: ../index.html");
        exit();
    }
    mysqli_stmt_bind_param($statement, "i", $id);
    mysqli_stmt_execute($statement);

    $result = mysqli_stmt_get_result($statement);
    $row = mysqli_fetch_assoc($result);

    return $row["NomCine"];
}

?>