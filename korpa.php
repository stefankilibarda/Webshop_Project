<?php
    session_start();
    include "meni.php";
    include "klasa_stavke_korpe.php";    

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Webshop - Vasa korpa</title>
    </head>
    <body>
        <?php
            $meni = new Meni();
            $meni->header();            
        
            $k->prikazi();
        
            $meni->footer();
        ?>
    </body>
</html>



