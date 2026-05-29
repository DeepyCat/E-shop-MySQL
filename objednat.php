<?php
include 'db.php';

$jmeno = $_POST['jmeno'];
$adresa = $_POST['adresa'];

$sql_suma = "SELECT SUM(plushie.price * kosik.mnozstvi) AS total 
             FROM kosik 
             JOIN plushie ON kosik.product_id = plushie.id";
$vysledek_suma = $conn->query($sql_suma);
$row = $vysledek_suma->fetch_assoc();
$celkovaCena = ($row['total'] !== null) ? $row['total'] : 0;

$stmt = $conn->prepare("INSERT INTO objednavky (jmeno, adresa, celkova_cena) VALUES (?, ?, ?)");
$stmt->bind_param("ssd", $jmeno, $adresa, $celkovaCena);
$stmt->execute();

$conn->query("DELETE FROM kosik");
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">
    <title>Potvrzení objednávky</title>
</head>
<body>
    <header>
    <img src="img/logo.png" class="logo" alt="Logo">
    <nav>
        <a href="index.php">Domů</a>
        <a href="categories.html">Kategorie</a>
        <a href="about.html">O nás</a>
        
        <a href="kosik.php" class="kosik-link">Košík</a>
    </nav>
</header>
    <div class="card" style="max-width: 600px; margin: 50px auto; padding: 40px; text-align: center;">
        <h1>Děkujeme za nákup, <?php echo htmlspecialchars($jmeno); ?>!</h1>
        <p>Tvoje objednávka na adresu: <strong><?php echo htmlspecialchars($adresa); ?></strong> byla úspěšně přijata. <br> Platit se bude na místě peněžně</p>
        <p>Celková cena: <?php echo number_format($celkovaCena, 0, ',', ' '); ?> Kč</p>
        <a href="index.php" class="btn">Zpět na obchod</a>
    </div>
</body>
</html>