<?php
    include "baza_proizvod.php";
    include "knjiga.php";
    include "meni.php";

    if(isset($_GET['barkod']))
        $barkod = $_GET['barkod'];
    else
        header("location:../Webshop Project/index.php");

    $knjiga = $obj->prikazi_knjigu($barkod);    

?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Webshop - Pregled proizvoda</title>
    </head>
    <body>
        <?php
            $meni = new Meni();
            $meni->header();
            $meni->sidebar();
        ?>
        <div class="main_detaljnije"> 
            <?php
                $knjiga->prikazi_knjigu("knjiga")
            ?>
        </div>
        <?php
            $meni->footer();
        ?>
    </body>
</html>