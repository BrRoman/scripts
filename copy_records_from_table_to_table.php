<?php
    // This script copies the records of a table Days to a table Tempo.
    $bdd = new PDO("mysql:host=localhost;dbname=livrets;charset=utf8", "root", "marie2017", array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    $rep = $bdd->query("SELECT * FROM Days ORDER BY Id");
    $records = "";
    while($data = $rep->fetch()){
        $records = $records."(\"".$data["Ref"]."\", \"".str_replace("\\", "\\\\", $data["Day"]."\", \"".$data["Rang"]."\", \"".$data["Precedence"]."\", \"".$data["Tierce"]."\", \"".$data["Oraisons"]."\", \"".$data["Lect_propres"]."\", \"".$data["Lect_cycle"]."\", \"".$data["Pref"]."\", \"".$data["Pref_name_la"]."\", \"".$data["Pref_name_fr"]."\"),";
    }
    $bdd->query("INSERT INTO Tempo (Ref, Day, Rang, Precedence, Tierce, Oraisons, Lect_propres, Lect_cycle, Pref, Pref_name_la, Pref_name_fr) VALUES ".substr($records, 0, -1).";");
    $rep->closeCursor();
?>
