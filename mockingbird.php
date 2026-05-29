<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mocking bird | ZZZ Plush Store</title>
    <link rel="stylesheet" href="css/mockingbird.css">
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
    <h2>Mocking Bird</h2>
    <p>
        Elegantní, nebezpeční a vždy o krok napřed. MockingBird operují ve stínech New Eridu..
    </p>
</section>

<section class="grid">
    <?php
    include 'db.php';
    $dotaz = $conn->query("SELECT * FROM plushie WHERE Unit = 'MockingBird'");
    
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