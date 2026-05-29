<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cunning Hares | ZZZ Plush Store</title>
    <link rel="stylesheet" href="css/HSOS6.css">
</head>
<body>

<header>
    <img src="img/logo.png" class="logo">
    <nav>
        <a href="index.php">Domů</a>
        <a href="categories.html">Kategorie</a>
        <a href="about.html">O nás</a>
        <a href="kosik.php">Košík</a>
    </nav>
</header>

<section class="banner">
    <h2>HSOS6</h2>
    <p>
        HSOS6 je elitní jednotka H.I.A. specializovaná na nejnebezpečnější operace v Hollow. Jsou to disciplinovaní profíci, kteří s absolutní precizností eliminují jakoukoli hrozbu..
    </p>
</section>

<section class="grid">
    <?php
    include 'db.php';
    $dotaz = $conn->query("SELECT * FROM plushie WHERE Unit = 'HSOS6'");
    
    while($row = $dotaz->fetch_assoc()) {
        echo "<div class='card'>";
        echo "  <img src='" . htmlspecialchars($row['img']) . "' alt='" . htmlspecialchars($row['name']) . "'>";
        echo "  <h3>" . htmlspecialchars($row['name']) . "</h3>";
        echo "  <p>" . htmlspecialchars($row['popis']) . "</p>";
        echo "  <div class='price'>" . number_format($row['price'], 0, ',', ' ') . " Kč</div>";
        echo "<a href='pridat_do_db.php?id=" . $row['id'] . "'><button class='btn'>Přidat do košíku</button></a>";
        echo "</div>";
    }
    ?>
</section>

</body>
</html>