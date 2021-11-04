<?php
    include "knjiga.php";
    include "baza_proizvod.php";
    include "klasa_stavke_korpe.php";
    

    if(isset($_GET['akcija']) && $_GET['akcija'] == 'dodaj' && $_GET['barkod'] != ""){
        $barkod = $_GET['barkod'];
        $knjiga = $obj->prikazi_knjigu($barkod);
        $k->ubaci_knjigu($knjiga->barkod, $knjiga->naslov, $knjiga->cena, 1);
        header("location:korpa.php");
    }
    if(isset($_GET['akcija']) && $_GET['akcija'] == 'smanji'){
        $id = $_GET['barkod'];
        $k->promeni_kolicinu($id, -1); 
        header("Location: korpa.php");       
    }
    if(isset($_GET['akcija']) && $_GET['akcija'] == 'obrisi'){
        $id = $_GET['barkod'];
        $k->obrisi_proizvod($id);
        header("Location: korpa.php");
    }
    
        


?>