<?php 
    

    
    if($_SERVER['REQUEST_URI'] == "/index.php"){
        echo " <header>
        <div id='logo'>
            <img src='../images/logo-cinema.png' alt='logo1' height='%20' width='20%'>
        </div>
        <ul class='navbar'>
            <li><a href='#menu'>Menu</a></li>
            <li><a href='#films'>Films</a></li>
            <li><a href='#cinema'>Cinémas</a></li>
            <li><a href='../login.php' class='user'><i class='fa-regular fa-user'></i></a></li>

        </ul>
        </header>";

    }else{
        echo " <header>
        <div id='logo'>
            <img src='../images/logo-cinema.png' alt='logo1' height='%20' width='20%'>
        </div>
        <ul class='navbar'>
            <li><a href='index.php'>Menu</a></li>
            <li><a href='redirect_film.php'>Films</a></li>
            <li><a href='index.php'>Cinémas</a></li>
            <li><a href='../login.php' class='user'><i class='fa-regular fa-user'></i></a></li>

        </ul>
        </header>";
    }
    

?>
