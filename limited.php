<?php include 'db.php'; ?>
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/limited.css">
    <title>Limitovaná edice | ZZZ Plush Store</title>
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
    <h2>Limitovaná edice</h2>
    <p>Exkluzivní plyšáci dostupní pouze po omezenou dobu.</p>
</section>

<section class="grid">
<?php
$dotaz = $conn->query("SELECT * FROM plushie WHERE Unit = 'Limited'");
while($row = $dotaz->fetch_assoc()) {
    echo "
    <div class='card'>
        <img src='" . $row['img'] . "'>
        <h3>" . $row['name'] . "</h3>
        <div class='price'>" . $row['price'] . " Kč</div>
        <a href='pridat_do_db.php?id=" . $row['id'] . "'><button class='btn'>Přidat do košíku</button></a>
    </div>";
}
?>
</section>

</body>
</html>