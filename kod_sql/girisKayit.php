<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>21100011007</title>
    <link rel="stylesheet" href="girisKayit.css">
    <script src="proje.js"></script>
</head>
<body>
    <hr>
    <div class="Radio">
        <div class="radio_btn">
            <input type="radio" id="giris" value="gir" name="secim" checked onchange="degisim(this)">
            <label for="giris">Giriş!</label>
            <input type="radio" id="kayit" value="kay" name="secim"  onchange="degisim(this)">
            <label for="kayit"> Kayıt!</label>
        </div>
        <hr>
        
    </div>
    

    <div class="Giris">
        <div class="GirisText">
            <label for="username">Kullanıcı Adı:</label>
            <input type="text" id="usernameGiris" name="username"><br><br><br>

            <label for="sifre">Şifre</label>
            <input type="password" id="passwordGiris" name="pname"><br><br><br>

            <input type="submit" value="GIRIS" id="sbmt" onclick="radioBtn(this)">

        </div>
        <p id="GirisMesaj" class="mesaj"></p>
    </div>

    <div class="Kayit">
        <div class="KayitText">
            <input type="submit" value="KAYIT" id="kayitButton" onclick="radioBtn(this)">
            <br><br>
            <label for="username">İsim:</label>
            <input type="text" id="usernameKayit" name="username"><br><br>
            <label for="sifre">E-posta:</label>
            <input type="email" id="email" name="email">
            
        </div>
        <p id="KayitMesaj" class="mesaj"></p>
    </div>
    
    <hr>
</body>