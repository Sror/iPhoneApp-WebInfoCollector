<?php
//$requiredRole = 3;
//include("includes/session.php");
require_once("includes/db_connection.php");

// get the post params
$event_id = $_GET['event_id'];
//$event_id = null;

if (is_null($event_id) || trim($event_id) ==""){
    echo "invalid event id = ".$event_id;
} else {
    $query = " SELECT  count FROM Vouchers WHERE event_id='$event_id';";
    $eventIdResult = mysql_query($query) or die(mysql_error());
    $qValues = mysql_fetch_assoc($eventIdResult);
    $count = $qValues["count"];

    // if event id does not  exist, create one and count one

    if (is_null($count)){
        echo "no event id found";
        $query = "INSERT INTO Vouchers (event_id,count) values ('$event_id','1');";
        $insertResult = mysql_query($query) or die(mysql_error());
    }else
    // if event id exists, get count, add one, and update the row
    {
        $count ++;
        echo $count;
        $query = "UPDATE Vouchers SET event_id = $event_id,count=$count WHERE event_id='$event_id';";
        $insertResult = mysql_query($query) or die(mysql_error());
    }
}
mysql_close($con);