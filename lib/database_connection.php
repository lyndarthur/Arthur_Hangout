<?php
    require __DIR__ . "/database_credentials.php";

    //creating new connection
    $conn = new mysqli(servername, username, password, dbname);
    if ($conn ->connect_error) {
     die("Connection failed: " . $conn->connect_error);
     echo "connection failed";
    } 

    else{
        echo "connection successful";
    }
    
?>