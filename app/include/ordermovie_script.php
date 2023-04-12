<?php

if(!isset($_GET["movie"]) || !isset($_GET["cine"])){
    //header("location: ../ordermovie.php?error=1");
    echo "errrrr";
    exit();
}

require_once 'bdd_script.php';

$sql = "INSERT INTO Séance(IdSéance, DateSéance, RefFilm, RefCine) VALUES(?, ?, ?, ?);";

$statement = mysqli_stmt_init($conn);
if (!mysqli_stmt_prepare($statement, $sql)) {
    header("location: ../ordermovie.php?error=1");
    exit();
}
mysqli_stmt_bind_param($statement, "iiii", $nom, $prenom, $email, $hash);
mysqli_stmt_execute($statement);

mysqli_stmt_close($statement);
header("location: ../ordermovie.php?success=1");
exit();