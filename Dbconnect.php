<!-- NAME : RIYAD AHSAN AUNTOR
    ID: 18101358
    SECTION: 8
    GROUP : 6
    PROJECT : IMDB DATABASE
    ASSIGNED FEATURE : 2
    E-MAIL : riyad.ahsan.auntor@g.bracu.ac.bd
-->

<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "movie_database";

    //creating connection

    $conn = new mysqli($servername, $username, $password, $dbname);

    //check connection
    if($conn -> connect_error){
        die("connection failed :" . $conn -> connect_error);
    }
?>