<?php
$requiredRole =4;
include("includes/session.php");
    echo "Dear ".$_SESSION['first_name']." ".  $_SESSION['last_name'].",<p>
    Welcome to the portal page !!! </p>";

    $role = $_SESSION['role'];
    if ($role <=3){
        // add event
        echo "<p><a href='addEvent.php'>add an event </a></p>";
        if ($role <=2){
        //add venue
            echo "<p><a href='addVenue.php'>add a venue </a></p>";
        //add client
            echo "<p><a href='addClient.php'>add a client </a></p>";
        }
        if ($role == 1){
        //add promoter
            echo "<p><a href='addPromoter.php'>add a promoter </a></p>";
        //add admin
            echo "<p><a href='addAdmin.php'>add an admin </a></p>";
        }
    }


//sign out
echo "<p><a href='signOut.php'>Sign Out </a></p>";




