<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cunning Hares | ZZZ Plush Store</title>
    <link rel="stylesheet" href="css/cunning_hares.css">
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
    <h2>Cunning Hares</h2>
    <p>
        Cunning Hares jsou malá, ale extrémně schopná frakce působící v New Eridu.
        Specializují se na průzkum Hollow oblastí, rychlé zásahy a riskantní zakázky.
    </p>
</section>

<section class="grid">
    <?php
    include 'db.php';
    $dotaz = $conn->query("SELECT * FROM plushie WHERE Unit = 'Cunning Hares'");
    
    while($row = $dotaz->fetch_assoc()) {
        echo "<div class='card'>";
        echo "  <img src='" . htmlspecialchars($row['img']) . "' alt='" . htmlspecialchars($row['name']) . "'>";
        echo "  <h3>" . htmlspecialchars($row['name']) . "</h3>";
        echo "  <p>" . htmlspecialchars($row['popis']) . "</p>";
        echo "  <div class='price'>" . number_format($row['price'], 0, ',', ' ') . " Kč</div>";
        echo "<div><a href='pridat_do_db.php?id=" . $row['id'] . "'><button>Přidat do košíku</button></a></div>";
        echo "</div>";
    }
    ?>
</section>

</body>
</html>