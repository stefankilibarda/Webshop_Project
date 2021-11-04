<?php
    session_start();

    if(!isset($_SESSION['stavke_korpe']))
        $_SESSION['stavke_korpe'] = [];


    class Korpa {
        public $stavke_korpe;

        function __construct() {
            $this->stavke_korpe = $_SESSION['stavke_korpe'];
        }

        function ubaci_knjigu($barkod, $naslov, $cena, $kolicina) {  
            $nasao = false;
            for($i=0; $i<count($this->stavke_korpe); $i++){
                if($this->stavke_korpe[$i]['barkod'] == $barkod){
                    $this->promeni_kolicinu($barkod, $kolicina);
                    $nasao = true;
                    break;
                }
            }
            if($nasao == false) {
                $nova_stavka = ['barkod'=>$barkod, 'naslov'=>$naslov, 'cena'=>$cena, 'kolicina'=>$kolicina];
                array_push($this->stavke_korpe, $nova_stavka);
            }
            $_SESSION['stavke_korpe'] = $this->stavke_korpe;
        }
        
        function izbaci_knjigu($barkod) {
            for($i=0; $i<count($this->stavke_korpe); $i++) {
                if($this->stavke_korpe[$i]['barkod'] == $barkod) {
                    array_splice($this->stavke_korpe, $i, 1);
                    break;
                }
            }
            $_SESSION['stavke_korpe'] = $this->stavke_korpe;
        }

        function ukupno(){
            $s = 0;
            for($i=0;$ $i<count($this->stavke_korpe); $i++) {
                $u = $this->stavke_korpe[$i]['cena'] * $this->stavke_korpe[$i]['kolicina'];
                $s += $u;
            }
            return $s;
        }
        function promeni_kolicinu($barkod, $kol){
            for($i=0; $i<count($this->stavke_korpe); $i++){
                if($this->stavke_korpe[$i]['barkod'] == $barkod){
                    $this->stavke_korpe[$i]['kolicina'] += $kol;
                    if($this->stavke_korpe[$i]['kolicina'] <= 0)                        
                        $this->obrisi_proizvod($barkod);
                    break;
                }
            }
            $_SESSION['stavke_korpe'] = $this->stavke_korpe;
        }
        function obrisi_proizvod($barkod){
            for($i=0; $i<count($this->stavke_korpe); $i++){
                if($this->stavke_korpe[$i]['barkod'] == $barkod){
                    array_splice($this->stavke_korpe, $i, 1);
                    break;
                }
            }
            $_SESSION['stavke_korpe'] = $this->stavke_korpe;
        }
        function prikazi(){
            echo "<div class='korpa_pregled'>";
                
                echo "<table>";
                echo     "<caption>Vasa korpa</caption>";
                echo     "<thead>";
                echo         "<tr>";
                echo            "<th>Proizvod</th>";
                echo            "<th>Cena</th>";
                echo            "<th>Kolicina</th>";                        
                echo         "</tr>";
                echo      "</thead>";
                echo    "<tbody>";                
                $s = 0;
                $u= 0;
                for($i=0; $i<count($this->stavke_korpe); $i++){
                    $u = $this->stavke_korpe[$i]['cena'] * $this->stavke_korpe[$i]['kolicina'];
                    $s += $u;                
                echo    "<tr>";
                echo       "<td>".$this->stavke_korpe[$i]['naslov']."</td>";
                echo       "<td>".$this->stavke_korpe[$i]['cena']." RSD</td>";
                echo       "<td>".$this->stavke_korpe[$i]['kolicina']." <button><a href='promena_korpe.php?akcija=dodaj&barkod=".$this->stavke_korpe[$i]['barkod']."'>+</a></button><button><a href='promena_korpe.php?akcija=smanji&barkod=".$this->stavke_korpe[$i]['barkod']."'>-</a></button></td>";                        
                echo     "</tr>";                
            }
                echo    "</tbody>";
                echo    "<tfoot>";
                echo    "<tr>";
                echo        "<td>Ukupno</td>";
                echo        "<td colspan='2'>$u RSD</td>";
                echo     "</tr>";
                echo    "</tfoot>";
                echo "</table>";
                echo "<input type='button' class='otkazi_dugme' name='otkazi' value='OTKAZI'>";
                echo "<input type='button' class='kupi_dugme' name='kupi' value='KUPI'>";
                echo "</div>";
                
        }


    }

    $k = new Korpa();

    

?>