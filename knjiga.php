<?php    

    class Knjiga {
        public $barkod;
        public $naslov;
        public $autor;
        public $cena;
        public $isbn;
        public $izdavac;
        public $opis;
        public $kategorija;
        public $godina_izdavanja;
        public $br_strana;
        public $slika;
        

        function __construct($red){
            $this->barkod = $red['barkod'];
            $this->naslov = $red['naslov'];
            $this->autor = $red['autor'];
            $this->cena = $red['cena'];
            $this->isbn = $red['isbn'];
            $this->izdavac = $red['izdavac'];
            $this->opis = $red['opis'];
            $this->kategorija = $red['kategorija'];
            $this->godina_izdavanja = $red['godina_izdavanja'];
            $this->br_strana = $red['br_strana'];
            $this->slika = $red['slika'];
        }

        function prikazi_knjigu($tip_prikaza) {
            if($tip_prikaza == "lista"){
                echo "<div class='knjiga'>
                                <div class='naslov_knjige'>
                                    <a href='detaljnije.php?barkod=$this->barkod'><p>$this->naslov</p></a>
                                </div>
                                <div class='slika_knjige'>
                                    <a href='detaljnije.php?barkod=$this->barkod'><img src='images/$this->slika' alt='$this->naslov'></a>
                                </div>
                                <div class='autor'>
                                    <p>$this->autor</p>
                                </div>
                                <div class='cena'>
                                    <p>$this->cena RSD</p>
                                </div>
                                <div class='korpa'>
                                    <a href='promena_korpe.php?akcija=dodaj&barkod=$this->barkod'>Dodajte u korpu</a>
                                </div>
                            </div>";
            }elseif($tip_prikaza == "knjiga"){
                echo "<div class='content'>            
                            <div class='slika_knjige_detaljnije'>
                            <img src='images/$this->slika' alt='$this->naslov'>
                        </div>
                        <div class='informacije_o_knjzi'>
                            <p class='naslov'>$this->naslov</p>
                            <p class='kategorija'>$this->kategorija</p>
                            <p class='isbn'>Isbn: $this->isbn</p>
                            <p class='autor'>Autor : $this->autor</p>
                            <p class='izdavac'>Izdavač : $this->izdavac</p>
                            <p class='radnja_knjige'>$this->opis</p>
                            <p class='specifikacija'>Specifikacija: </p>
                            <p class='kategorija'>Kategorija:   $this->kategorija</p>
                            <p class='autor'>Autor : $this->autor</p>
                            <p class='izdavac'>Izdavač : $this->izdavac</p>
                            <p class='godina'>Godina:   $this->godina_izdavanja</p>
                            <p class='strana'>Strana:   $this->br_strana</p>                    
                        </div>               
                    </div>
                    <div class='cena_detaljnije'>
                            <p>Cena: $this->cena <a href='promena_korpe.php?akcija=dodaj&barkod=$this->barkod' class='button'>DODAJ U KORPU</a></p>                
                    </div>";
            }
        }

    }
    

?>