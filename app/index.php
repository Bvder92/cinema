<?php

$conn = mysqli_connect('db', 'docker_user', 'password');

if (!$conn)
{
    echo "non";
}

else{
    echo "<h1>mysqli marche</h1>";
}