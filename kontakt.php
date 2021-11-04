<?php
    include "meni.php";
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Webshop - kontakt</title>
    </head>
    <body>
        <?php
            $meni = new Meni();
            $meni->header();
        ?>
        <div class="form_header">            
            <p>KONTAKT<br>Sva pitanja mozete da nam postavite putem forme:</p>
        </div>    
        <div class="contact">            
            <form action="#" method="GET">
                <div class="ime_prezime">
                    <input type="text" name="ime_prezime" size="58" placeholder="Ime i prezime:" required>
                </div>
                <div class="email">
                    <input type="email" name="email" size="58" placeholder="E-mail adresa:" required>
                </div>
                <div class="telefon">
                    <input type="text" name="telefon" size="58" placeholder="Telefon:">
                </div>
                <div class="naslov_poruke">
                    <input type="text" name="naslov_poruke" size="58" placeholder="Naslov poruke:" required>
                </div>
                <div class="razlog">
                    <select name="razlog" required>
                        <option value="" disabled selected>Izaberite razlog</option>
                        <option value="porudzbina">Moja porudzbina</option>
                        <option value="izmena">Izmena porudzbine</option>
                        <option value="otkazivanje">Otkazivanje porudzbine</option>
                        <option value="reklamacija">Reklamacija</option>
                        <option value="ostalo">Ostalo</option>
                    </select>
                </div>
                <div class="komentar">
                    <textarea name="komentar" cols="60" rows="10" placeholder="Ovde upisite Vas komentar..." required></textarea>
                </div>
                <div class="submit">
                    <input type="submit"  value="POSALJI">
                </div>
            </form>
        </div>            
        </div>        
        <?php
            $meni->footer();
        ?>
    </body>
</html>