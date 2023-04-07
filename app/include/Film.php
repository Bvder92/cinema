<?php

class Film 
{
    private $idFilm;
    private $nomFilm;
    private $genreFilm;
    private $dureeFilm;
    private $producteur;

    function __construct($id, $conn){

        $sql = "SELECT * FROM Film WHERE IdFilm = ?;";

        $statement = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($statement, $sql)) {
            header("location: ordermovie.php?error=1");
            exit();
        }

        mysqli_stmt_bind_param($statement, "i", $id);
        mysqli_stmt_execute($statement);

        $result = mysqli_stmt_get_result($statement);
        $row = mysqli_fetch_assoc($result);

        $this->idFilm = $row["IdFilm"];
        $this->nomFilm = $row["NomFilm"];
        $this->dureeFilm = $row["GenreFilm"];
        $this->producteur = $row["Producteur"];

        if ($this->idFilm == ""){
            header("location: ordermovie.php?error=1");
            exit();
        }
    }

    function getId(){
        return $this->idFilm;
    }

    function getNom(){
        return $this->nomFilm;
    }

    function getGenre(){
        return $this->genreFilm;
    }
    
    function getDuree(){
        return $this->dureeFilm;
    }

    function getProducteur(){
        return $this->producteur;
    }

}