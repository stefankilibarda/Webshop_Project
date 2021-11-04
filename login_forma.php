<?php
    session_start();
    include "meni.php";
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Webshop - login</title>
    </head>
    <body>
        <?php
            $meni = new Meni();
            $meni->header();
        ?>
        <div class="form_header">            
            <p>LOGIN<br>Molimo Vas da se logujete:</p>
        </div>
        <?php
            if(!isset($_SESSION['login_id']) && !isset($_COOKIE['login_id'])){
        ?>
        <div class="contact">
            <form action="#" method="GET">
                <div class="ime_prezime">
                    <input type="text" name="email" size="58" placeholder="Email:" required>
                </div>
                <div class="email">
                    <input type="password" name="password" size="58" placeholder="Password:" required>
                </div>                
                
                
                <div class="submit">
                    <input type="submit"  value="LOGIN">
                </div>
            </form>
        <?php
            }
        ?>
        </div>            
        </div>        
        <?php
            $meni->footer();
        ?>
    </body>
</html>