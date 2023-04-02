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
    header("location: ../signup.php?error=none");
    exit();
}