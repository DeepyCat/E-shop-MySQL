<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css"> </head>
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

<div class="card" style="max-width: 600px; margin: 50px auto; padding: 40px;">
    <h1>Tvůj košík</h1>
    <p>Děkujeme, že jsi si vybral právě nás!</p>
    <hr style="border: 0; border-top: 1px solid #333; margin: 20px 0;">

    <?php
    include 'db.php';
    $sql = "SELECT plushie.name, plushie.price, kosik.mnozstvi 
            FROM kosik 
            JOIN plushie ON kosik.product_id = plushie.id";
    $vysledek = $conn->query($sql);
    
    $celkem = 0;
    if ($vysledek->num_rows > 0) {
        while($row = $vysledek->fetch_assoc()) {
            $subtotal = $row['price'] * $row['mnozstvi'];
            $celkem += $subtotal;
            echo "<p>" . htmlspecialchars($row['name']) . " | " . $row['mnozstvi'] . " ks | " . number_format($subtotal, 0, ',', ' ') . " Kč</p>";
        }
        echo "<div class='total' style='font-size: 1.5rem; font-weight: bold; color: #fff; margin-top: 20px;'>Celkem k úhradě: " . number_format($celkem, 0, ',', ' ') . " Kč</div>";
    } else {
        echo "<p>Košík je prázdný.</p>";
    }
    ?>
    <br>
    <a href="index.php" class="btn">Zpět na obchod</a>
</div>

</body>
</html>