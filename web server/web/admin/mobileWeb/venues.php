<html>
<head>
    <meta charset="utf-8">
    <title>Venues</title>
    <style>
        body {
            font-family: arial;
        }
        .span12{
            background: darkslategray;
            border: 2px solid #c0c0c0;
            height: 30px;
            text-align: left;
            padding: 15px 15px 5px 15px;
            color: #ffffff;
            margin: 1px;
            border-radius: 10px;
            box-shadow: 3px 3px 10px black;

            background-image: linear-gradient(bottom, rgb(29,31,36) 2%, rgb(101,104,110) 56%, rgb(124,129,138) 78%);
            background-image: -o-linear-gradient(bottom, rgb(29,31,36) 2%, rgb(101,104,110) 56%, rgb(124,129,138) 78%);
            background-image: -moz-linear-gradient(bottom, rgb(29,31,36) 2%, rgb(101,104,110) 56%, rgb(124,129,138) 78%);
            background-image: -webkit-linear-gradient(bottom, rgb(29,31,36) 2%, rgb(101,104,110) 56%, rgb(124,129,138) 78%);
            background-image: -ms-linear-gradient(bottom, rgb(29,31,36) 2%, rgb(101,104,110) 56%, rgb(124,129,138) 78%);

            background-image: -webkit-gradient(
                linear,
                left bottom,
                left top,
                color-stop(0.02, rgb(29,31,36)),
                color-stop(0.56, rgb(101,104,110)),
                color-stop(0.78, rgb(124,129,138))
            );
        }

    </style>
</head>
<body>
<h1>Venues</h1>
<?php
$json_string =    file_get_contents("http://cnapp.co.uk/public/datesAndEvents.php");
$parsed_json = json_decode($json_string);
?>

<div class="row">
<?php
foreach($parsed_json  as $event) {
    echo "<div class='span12'>".$event->date ." ".$event->day." ".$event->quantity."</div>";
 } ?>
</body>
</html>