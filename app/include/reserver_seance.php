<?php

if(!isset($_POST["movie"]) || !isset($_POST["index"])){
    echo "POST parameters unset";
    exit();
}

if($_POST["movie"] < 0 || $_POST["movie"] > 20){
    echo "POST parameters invalid";
    exit();
}

if($_POST["index"] < 0 || $_POST["index"] > 16){
    echo "POST parameters invalid";
    exit();
}

session_start();
if (!isset($_SESSION["IdClient"])) {
    echo "notLogedIn";
    exit();
}

include_once "functions.php";
include_once "bdd_script.php";
include_once "Film.php";

$film = new Film($_POST["movie"], $conn);
$array = $film->getSeances();

//post[index][0] correspond à IdClient de la index-ieme ligne de la table
reserverSeance($conn, $_SESSION["IdClient"], $array[$_POST["index"]][0]);
echo "sucess";