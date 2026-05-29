<?php
include 'db.php';
$product_id = $_GET['id'];

// Vložíme produkt do tabulky kosik (předpokládáme množství 1)
$sql = "INSERT INTO kosik (product_id, mnozstvi) VALUES ($product_id, 1)";
$conn->query($sql);



// Přesměrování zpět na stránku, odkud uživatel přišel
header("Location: " . $_SERVER['HTTP_REFERER']);
exit();
?>
