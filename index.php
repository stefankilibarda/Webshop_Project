<?php
    include "baza_proizvod.php";
    include "knjiga.php";
    include "meni.php";

    if(isset($_GET['kategorija']))
        $kategorija = $_GET['kategorija'];
    else
        $kategorija = "";

    $ind = $obj->prikazi_sve_knjige($kategorija);   

?>



<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Webshop</title>
    </head>
    <body>
        <?php
            $meni = new Meni();
            $meni->header();
            $meni->sidebar();
        ?>
        <div class="main">
            <?php                
                foreach($ind as $red){                    
                    $knjiga = new Knjiga($red);
                    $knjiga->prikazi_knjigu("lista");
                }
                
            ?>
        </div>
        <?php
            $meni->footer();
        ?>        
    </body>
</html>