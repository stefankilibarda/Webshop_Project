<?php

    class Meni {
        function header(){
            echo "
                <header id='header'>            
                    <p><a href='index.php' class='pocetna'>Pocetna</a></p>
                    <p><a href='login_forma.php'>Login</a><a href='korpa.php'>Korpa</a></p>
                </header> 
            ";
        }
        function sidebar(){
            echo "
                <div id='sidebar'>
                    <span>Kategorije:</span>
                    <a href='index.php'>Sve</a>
                    <a href='index.php?kategorija=fantastika'>Fantastika</a>
                    <a href='index.php?kategorija=popularna_nauka'>Popularna nauka</a>
                    <a href='index.php?kategorija=english_books'>English books</a>
                    <p><a href='kontakt.php'>Kontakt</a></p>
                </div>
            ";
        }
        function footer(){
            echo "
                <footer id='footer'>
                    <div>&copy; 2021, Izrada: Stefan Kilibarda</div>
                </footer>
            ";
        }
    }

    

?>