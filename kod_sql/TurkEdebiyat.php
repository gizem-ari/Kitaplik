<?php
// Veritabanına bağlan
$host = "localhost";
$user = "root";
$password = "12345678";
$database = "db_kitaplar";

$conn = new mysqli($host, $user, $password, $database);

// Bağlantı kontrolü
if ($conn->connect_error) {
    die("Bağlantı hatası: " . $conn->connect_error);
}

// Kategori ID'sine göre kitapları çek
$kategori_ID = 1;

$sql = "SELECT 
            k.kitap_ad AS title, 
            k.kitap_yazar AS author, 
            k.kitap_puan AS rating, 
            k.kitap_resim AS image_path, 
            k.kitap_yazi AS description,
            kat.kategori_isim AS category_name
        FROM tbl_kitaplar k
        INNER JOIN tbl_kategoriler kat ON k.kategori_ID = kat.kategori_ID
        WHERE k.kategori_ID = $kategori_ID";

$result = $conn->query($sql);

// Kitapları bir diziye aktar
$books = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $books[] = $row;
    }
}

$conn->close();
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Türk Edebiyatı Klasikleri</title>
    <link rel="stylesheet" type="text/css" href="kategori.css">
    
    <script src="proje.js" language="javascript" defer></script>
</head>
<body class="syfTurk">
    <div class="ustBaslik">
        <input type="submit" id="btnAnasayfa" class="btn"  value="ANASAYFA"/>
        <h2>Türk Edebiyatı Klasikleri</h2>
    </div>
    <main class="main" id="books-container"></main>

    <?php foreach ($books as $book): ?>
            <div class="books">
                <img src="<?php echo htmlspecialchars($book['image_path']); ?>" alt="<?php echo htmlspecialchars($book['title']); ?>"/>
                <div class="book_info">
                    <h3><?php echo htmlspecialchars($book['title']); ?></h3>
                    <span class="green"><?php echo htmlspecialchars($book['rating']); ?></span>
                </div>
                <div class="overview">
                    <h3><?php echo htmlspecialchars($book['author']); ?> <small><?php echo htmlspecialchars($book['category_name']); ?></small></h3>
                    <p><?php echo htmlspecialchars($book['description']); ?></p>
                </div>
            </div>
        <?php endforeach; ?>
</body>
</html>