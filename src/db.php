<?php

 $db= new PDO('mysql:dbname=locvehicule;host=localhost','root','');

 $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   if($db){
    //die("connection reussi");
   }else{
    die("echec de la connexion");
   }

?>