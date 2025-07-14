window.addEventListener('DOMContentLoaded', function() {
    document.getElementById("btnAnasayfa").addEventListener('click', function() {
        window.location.href = "proje.php"; // Yönlendirme URL'sini güncelleyin
    });
});
//giris kayıt fonksiyonları
//21100011007 Fatma Gizem ARI
function degisim(secim){
    console.log(secim);
    if(secim.value=="kay")
    {
        document.getElementsByClassName("Giris")[0].style.display="none";
        document.getElementsByClassName("Kayit")[0].style.display="block";
    }
    else if(secim.value=="gir")
    {
        console.log(secim.value);
        document.getElementsByClassName("Giris")[0].style.display="block";
        document.getElementsByClassName("Kayit")[0].style.display="none";
    }
}


function radioBtn(radio_btn){
    document.getElementById("AcilisMesaj").innerHTML="Giriş veya Kayıt"
    if(radio_btn.value=="GIRIS")
    {
        if(document.getElementsByName("username")[0].value =="" || document.getElementsByName("pname")[0].value=="")
        {
            document.getElementById("GirisMesaj").innerHTML="Giriş işlemi başarısız!";
            document.getElementById("GirisMesaj").style.color="Red";
        }
        else
        {
            document.getElementById("GirisMesaj").innerHTML="Giriş işlemi başarılı!";
            document.getElementById("GirisMesaj").style.color="Green";

        }
    }
    else if(radio_btn.value=="KAYIT")
    {
        if(document.getElementsByName("username")[1].value==""|| document.getElementsByName("email")[0].value=="")
        {
            document.getElementById("KayitMesaj").innerHTML="Kayıt işlemi başarısız!";
            document.getElementById("KayitMesaj").style.color="Red";
        }
        else
        {
            document.getElementById("KayitMesaj").innerHTML = "Kayıt işlemi başarılı!";
            document.getElementById("KayitMesaj").style.color="Green";
        }
    }

}