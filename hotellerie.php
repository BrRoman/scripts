<?php
    // This script is run by a cron on a server to periodically delete records on the database Hôtellerie in the context of the RGPD.

    // Connection to the database:
    function connect_database(){
        $secret = json_decode(file_get_contents(__DIR__."/.secret/config.json"), true);
        $db_name = $secret["db_name"];
        $db_login = $secret["db_login"];
        $db_pass = $secret["db_pass"];
        try{
            $db = new PDO("mysql:host=localhost;dbname=$db_name;charset=utf8", $db_login, $db_pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::ATTR_ORACLE_NULLS => PDO::NULL_EMPTY_STRING));
            return($db);
        }
        catch(PDOException $e){
            print("PDO problem. Details : \n".$e->getMessage());
        }
    }

    // Remove old personnes (no stay since more than $nb_annees years):
    $nb_annees = 10;
    $date_limite = date("Y-m-d", date_timestamp_get(date_create()) - (3600 * 24 * 365 * $nb_annees));
    $db = connect_database();
    $db->exec("
        DROP TEMPORARY TABLE IF EXISTS Personnes_last_sejour;

        CREATE TEMPORARY TABLE Personnes_last_sejour
        SELECT p.id AS personne_id, MAX(s.sejour_au) AS max_sejour_au
        FROM Sejours AS s
        INNER JOIN Personnes AS p
        ON s.id_personne = p.id
        GROUP BY p.id
        ORDER BY max_sejour_au, p.nom, p.prenom, p.id;

        DELETE FROM Personnes
            WHERE id IN
                (SELECT p.personne_id FROM Personnes_last_sejour AS p WHERE p.max_sejour_au < '".$date_limite."')
    ");
    $query = "SELECT COUNT(*) FROM Personnes_last_sejour WHERE max_sejour_au < '".$date_limite."'";
    $req = $db->query($query);
    $result = $req->fetch(PDO::FETCH_ASSOC);
    $req->closeCursor();
    print(date("d/m/Y")." : ".$result["COUNT(*)"]." personne(s) effacées dans la base Hôtellerie pour cause de RGPD.\n---\n");
?>
