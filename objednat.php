<?php
include 'db.php';
// Uložení objednávky do databáze (předpokládá tabulku 'objednavky')
$conn->query("INSERT INTO objednavky (jmeno, adresa) VALUES ('" . $_POST['jmeno'] . "', '" . $_POST['adresa'] . "')");
// Vyprázdnění košíku
$conn->query("TRUNCATE TABLE kosik");

echo "<h2>Děkujeme za nákup!</h2><a href='index.php'>Zpět na obchod</a>";
?>
