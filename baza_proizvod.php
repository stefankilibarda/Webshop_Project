<?php    



    class Baza{
        public $conn;

        function __construct(){
            $this->conn = new mysqli('localhost', 'root', '', 'webshop_project');

            if($this->conn->connect_error){
                die("Greska: ".$this->conn->connect_error);
            }
        }

        function izvrsi_select($upit){
            $podaci = $this->conn->query($upit);
            if($podaci == false){
                return ['uspesno'=>false, 'poruka'=>$this->conn->error];
            }else{
                $niz = $podaci->fetch_all(MYSQLI_ASSOC);
                return ['uspesno'=>true, 'niz'=>$niz];
            }
        }

        function izvrsi_upit($upit){
            $odg = $this->conn->query($upit);
            if($odg === false){
                die('Nije izvrsen upit:'."<br>" . $this->conn->error . "<br>" . $upit);
            }else{
                echo "Uspesno izvrsen upit!";
            }
        }

        function prikazi_knjigu($id){ 
            $k = $this->izvrsi_select("SELECT * FROM knjige WHERE barkod=$id");
            if($k['uspesno'] == true){
                return new Knjiga($k['niz'][0]);
            }else{
                die("Neuspesan upit: " . $k['poruka']);
            }
        }

        function prikazi_sve_knjige($kategorija){
            if($kategorija != ""){
                $k = $this->izvrsi_select("SELECT * FROM knjige WHERE kategorija='$kategorija'");
            }
            else{
                $k = $this->izvrsi_select("SELECT * FROM knjige");
            }
            if($k['uspesno'] == true) {
                return $k['niz'];
            }else{
                return "Neuspesan upit: " . $k['poruka'];
            }
        }
        
    }



    $obj = new Baza();
    


?>