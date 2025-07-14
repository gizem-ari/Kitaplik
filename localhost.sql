-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 09 Tem 2025, 08:32:55
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db_kitaplar`
--
CREATE DATABASE IF NOT EXISTS `db_kitaplar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_kitaplar`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kullanici_ID` int(11) NOT NULL,
  `kullanici_ad` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `parola` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kayit_tarihi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kullanici_ID`, `kullanici_ad`, `email`, `parola`, `kayit_tarihi`) VALUES
(1, 'test', 'test@gmail.com', '123', '2024-12-05 18:34:49'),
(2, 'test2', 'test2@gmail.com', '', '2024-12-05 18:38:46'),
(3, 'azra', 'test@gmail.com', '', '2024-12-05 21:33:10'),
(23, 'gizemm', 'giz@gmail.com', '$2y$10$Lwy', '2024-12-07 17:12:09'),
(27, 'gizem_ari', 'gizem_ari@gmail.com', '$2y$10$4C3AOo8Tgsqvu9grfv5yX.EwsVENyoNkBWVEjX8EtzsaMDciLznma', '2024-12-07 17:57:05'),
(28, 'bilgee', 'bilge@gmail.com', '$2y$10$H.IacZGCNGd1IQc/0YFdmOqbAo5mVeuovK1BFQHEzvatbeZCcnqLu', '2024-12-07 22:51:53'),
(29, 'azraaa', 'azra@gmail.com', '$2y$10$KNur.ZErrel3tlgWJrfHKeENy20mbR3tHylxIUg6QDvLPhcUaHPWW', '2024-12-07 23:03:37'),
(30, 'perbul', 'perbul@abc', '$2y$10$T39DNTd17O1goJYZQiHFWezlNams5Lga2ksSHIGD7oyVg1E6Mt7bC', '2024-12-08 16:48:56'),
(31, 'asiyan', 'asirsef42@gmail', '$2y$10$FtW/6T8vmfi2fdvsoBrDRuygvXD7/CqzaAIVqeqfCASrbMY5c.7Gu', '2024-12-08 16:57:35'),
(32, 'azra__', 'azra@gmail.com', '$2y$10$MGHG9Gu3f3UPR3pvjpmXx.3A.6Tjz.nKLDe9meOhxgqcAblFLaDKm', '2024-12-08 17:01:40'),
(33, 'bbbbbb', 'bb@fgvbhnjm', '$2y$10$s6taR6YKRnqYWBhEANY.m.mKvxWkt6NogOHeI0W1mWpNbCEi/08cK', '2024-12-08 22:39:04'),
(34, 'BATUHAN', 'BATU@gmail.com', '$2y$10$MeTKGXaSiD3PxoRQzVbXle87x8qcocmHU9BQR5fMc5NR/ZSTvnvO2', '2024-12-11 13:04:32'),
(38, 'murattt', 'm@gmail.com', '$2y$10$oM1E5HKkVc/IQNpm/EvKQeYB2SZxkCJs2G2x7vwBBHq9VwiPPrr.2', '2024-12-13 10:28:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_kategoriler`
--

CREATE TABLE `tbl_kategoriler` (
  `kategori_ID` int(10) UNSIGNED NOT NULL,
  `kategori_isim` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `tbl_kategoriler`
--

INSERT INTO `tbl_kategoriler` (`kategori_ID`, `kategori_isim`) VALUES
(1, 'Türk Edebiyatı Klasikleri'),
(2, 'Dünya Edebiyatı Klasikler'),
(3, 'Psikoloji'),
(4, 'Kişisel Gelişim'),
(5, 'Polisiye'),
(6, 'Fantastik'),
(7, 'Çocuk');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_kitaplar`
--

CREATE TABLE `tbl_kitaplar` (
  `kitap_ID` int(10) UNSIGNED NOT NULL,
  `kitap_ad` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kitap_yazar` varchar(25) NOT NULL,
  `kategori_ID` int(11) UNSIGNED NOT NULL,
  `kitap_puan` float NOT NULL,
  `kitap_resim` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kitap_yazi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `tbl_kitaplar`
--

INSERT INTO `tbl_kitaplar` (`kitap_ID`, `kitap_ad`, `kitap_yazar`, `kategori_ID`, `kitap_puan`, `kitap_resim`, `kitap_yazi`) VALUES
(1, 'Beyoğlu\'nun En Güzel Abisi', 'Ahmet Ümit', 5, 9.8, 'KİTAPLIK\\PvG\\beyoglunun.jpg', 'Şeytan mührünü vurdu Tarlabaşı\'na…\r\n\r\nBeyoğlu\'nun tekinsiz arka sokakları… Senenin ilk karı düşerken Tarlabaşı\'nın yakışıklı delikanlısı katiline burukça güler ve ruhunu teslim eder. Başkomser Nevzat cinayeti çözmeye çalışırken şehrin nasıl parsel parsel satıldığına, insanların canları üzerine kurulan zenginliğe yeniden şahit olur, kahrolur.\r\n\r\nAşkın iyilikle bir ilgisi yok.\r\n\r\nAhmet Ümit “Beyoğlu\'nun En Güzel Abisi”nde semtin virane, metruk binalarıyla iç içe geçmiş bir suç ve cinayet örgüsünü samimiyetle ve dizginleyemediği bir isyan duygusuyla aktarıyor. Başkomser Nevzat da puslu havayı seven kurt misali İstanbul kışına pek bir yakışıyor.'),
(2, 'Cinayet Alfabesi', 'Agatha Cristie', 5, 9.5, 'KİTAPLIK\\PvG\\cinayet.jpg', 'Alfabe sırasına göre kurbanlarını öldüren seri katil, cesetlerin yanına ABC tren yolları tarifesini bırakmaktadır... Aynı zamanda cinayetleri işleyeceği mekânları Hercule Poirot’ya önceden haber vererek deneyimli dedektifle dalga geçmektedir. Fakat Poirot adı geçen yerlere ulaşmakta her zaman gecikir. Bu psikopatın düşüncelerinden ve cinayet metodundan fazlasıyla etkilenen Poirot, Hastings ve Japp’ın yardımıyla İngiltere’de enine boyuna seyahat ederek bu acımasız katilin izini bulmaya karar verir.'),
(3, 'Aklından Bir Sayı Tut', 'John Verdon', 5, 9.7, 'KİTAPLIK\\PvG\\aklından.jpg', 'Sizi sizden bile iyi tanıyan bir katilin peşinizde olduğunu bilseniz, kaçmak için ne yapabilirsiniz? Polisiye türündeki eserleriyle okuyucuyu her defasında soluksuz bırakmayı başaran John Verdon’dan etkileyici bir yapıt daha! Aklında Bir Sayı Tut, bir seri katil ile onun peşine düşen bir dedektifin heyecan dolu kovalamacasını konu ediniyor. Bu katilin kurban seçtiği kişilerin ortak bir noktası var. Peki ama ne? Bu romanı okurken merakınıza engel olamayacak ve olayların sonunu asla tahmin edemeyeceksiniz!'),
(4, 'Korku Vadisi', 'Sir Arthur conan Doyle', 5, 9, 'KİTAPLIK\\PvG\\korku-vadisi.jpg', '“İki kere ikinin dört ettiğini kanıtlaman istenirse zorluk yaşayabilirsin, hâlbuki sonuçtan sonuna kadar eminsindir.” Amerika’da, Korku Vadisi’nde yaşananlar, Sherlock Holmes’e, onun büyütecinin altına kadar uzanmış, Londra sokaklarında birbirini tetikleyen suçlar dizisinin son halkasından Sherlock Holmes tutmuştur. İpuçları onu hem geçmişin hem de yıllarca alınmak için sabırsızlıkla beklenen bir intikamın peşine düşmek zorunda bırakmıştır. Sherlock Holmes, peşine düştüğü bu ipuçlarında, başka suçların ve suçluların kokusunu çoktan almıştır bile.'),
(5, 'Da Vinci Şifresi', 'Dan Brown', 5, 8.2, 'KİTAPLIK\\PvG\\da vinci.jpg', 'Harvard Üniversitesi Simge-Bilim Profesörü Robert Langdon, Paris\'te iş gezisindeyken, gece yarısı, Louvre\'un yaşlı müdürünün ölü bulunduğu haberini alır. Langdon ve yetenekli Fransız kriptoloji uzmanı Sophie Neveu, cesedin etrafındaki izleri takip ederek bu garip esrar perdesini araladıkça, ipuçlarının onları Da Vinci\'nin tablosuna götürdüğünü keşfederler. Büyük usta bu sırrı herkesin görebileceği bir yere, ünlü eseri Mona Lisa tablosunun içine gizlemiştir.Langdon bu garip bağlantıyı açığa çıkarınca tehlike artar. Cinayete kurban giden müze müdürü de, Sir Isaac Newton, Botticelli, Victor Hugo, Da Vinci ve aralarında diğer ünlülerin de bulunduğu gizli bir kuruluş olan Sion Manastırı Derneği\'nin bir üyesidir.Langdon, aydınlatmaya çalıştıkları bu tehlikeli sırrın yüz yıllardır tarihin derinliklerinde gizlendiğinden şüphelenir. Böylece Paris ve Londra sokaklarında amansız bir kovalamaca başlar. Langdon ve Neveu, kendilerini, atacakları her adımı önceden bilen esrarengiz olduğu kadar da çok zeki olan bir adamla karşı karşıya bulurlar. Eğer bu karmaşık bilmeceyi çözemezlerse Priory\'nin büyük yankılar uyandıracak bu çok eski gerçeği ebediyen kaybolacaktır.'),
(6, 'Tutunamayanlar', 'Oğuz Atay', 1, 8.3, 'KİTAPLIK\\TEK\\Tutunamayanlar.jpg', 'Turgut Özben, gazetelerden arkadaşı Selim Işık\'ın vurulduğunu öğrenir. İntihara şaşırarak bunu araştırmaya başlar. İlk olarak Selim\'in arkadaşları Esat ve Metin ile görüşüyor. Metin, kendi kız arkadaşından ayrıldıktan sonra Selim\'in onunla ilişkisini olduğunu ancak daha sonra ayrıldıklarını söylüyor. Esat ise çocukluktan tanıdığını ve oyunlar oynadıklarını söylüyor. Selim\'in diğer arkadaşı Kargı\'yı bulan Turgut onunla da konuşuyor. Selim\'in kendi yazmış olduğu 600 sayfalık bir şiiri ona verir. Selim ile ilişkisi olan Günseli isminde de bir kızla tanışır. İlişkileri yavaşça ilerlemiş olsa da Selim kızla evlenmek istemiyor. Bir süre kendini içmeye verdikten sonra sanki kafeste yaşıyor gibi hastalanıyor. En son Günseli \'ye bir mektup yazıyor ve intihar ediyor.'),
(7, 'Kuyucaklı Yusuf', 'Sabahattin Ali', 1, 9.3, 'KİTAPLIK\\TEK\\kuyucaklı.jpg', '1937 yılında yayımlanan bu romanı, Türk yazınında, köyle ve eşrafla ilgili bazı konuların dile getirilmesini sağlama konusunda öncü bir role sahip olmuştur. Eserde, o zamana dek gündeme gelmemiş konular ifade edilmiştir. Roman, kasaba hayatının sorunlarını çarpıcı bir biçimde aktarmaktadır. Bir tür başkaldırır roman. Yerleşik düzene, yönetenlere, eşrafa, kasaba ve köylerde söz sahibi olan seçkinlere isyandır. Roman, bu haliyle toplumcu gerçekçi edebiyatın en iyi örneklerinden biridir. Sosyal sorunları gündeme getirmesi, romandan çok fazla söz edilmesini sağlamıştır.'),
(8, 'İnce Memed', 'Yaşar Kemal', 1, 9.4, 'KİTAPLIK\\TEK\\ince memet.jpg', 'Eserin adı İnce Memed’tir. Çukurova yöresi anlatılmaktadır. Ağa ve aşiretçilik sistemi ele alınmıştır. Ezilen bir sınıf vardır. Ağa bütün gücü elinde bulundurmaktadır ve keyfi olarak bu güçleri kullanmaktadır. Hikayede İnce Memed kahramanı olmuştur halkın başkaldırışıyla .Ve ağalara karşı savaşmaktadır sürekli .Yaşar KEMAL eserinde yaşanan hukuksuzluğu adaletsizliği çok güzel bir şekilde anlatmaktadır.'),
(9, 'Sırça Köşk', 'Sabahattin Ali', 1, 9.1, 'KİTAPLIK\\TEK\\sırca-kosk.jpg', 'Sırça Köşk, Sabahattin Ali’nin öykülerinden oluşan bir kitaptır. Unutulmaz öyküsü Sırça Köşk ise bir kasabaya gelen üç adam ve halk arasındaki düşündürücü ve belki de politik öyküyü anlatmaktadır. Üç adam kasabaya gelirler ve kasabada bir sırça köşk olup olmadığını sorarlar, halk onlara sırça köşkün ne olduğunu sorsa da adamlar bunu yanıtlamadan sırça köşk olmayan bir kasabada barınamayacaklarını söyleyerek kasabayı terk etmeye kalkar. Halk bir sırça köşk yapacağını söyler. Dişinden tırnağından artırdıklarıyla bir sırça köşk yapar. Adamlar bu köşkle idare edebileceklerini ama sırça köşke daha fazla çalışılması gerektiğini söyler. Böylece Halk elinde avucunda ne varsa sırça köşkü daha iyi bir yer haline getirmek için çabalar.'),
(10, 'Don Kişot', 'Miguel De Cervantes Saave', 2, 9.1, 'KİTAPLIK\\DEK\\donkişot.jpg', 'İlk bölümü 1605\'te, ikinci bölümü ise 1615\'te yayımlanan Don Kişot, İspanyol ve dünya edebiyatının en önemli romanlarından biri olarak kabul ediliyor. Modern batı edebiyatının temelini oluşturan bu eser, ilk modern roman olarak görülüyor. Cervantes tarafından kaleme alınan roman, bir aristokratın şövalye hikayelerini okuduktan sonra yola düşmesini ve yaşadığı karmaşayı anlatıyor.'),
(11, 'Karamazov Kardeşler', 'fyodor Dostoyevski', 2, 9.6, 'KİTAPLIK\\DEK\\karamazov.jpg', 'Karamazov Kardeşler, edebiyat tarihinde çok az romana nasip olmuş bir üne sahip. Klasik Rus edebiyatının dev yazarı Dostoyevski’nin bu son romanı, Rusya’nın ruhunu simgeleyen temsilcileriyle Karamazov ailesine odaklanmış, ama girmedik alan, değinmedik konu bırakmamış: din, ahlak, baba katli, şiddet, Doğu-Batı sorunu, sınıf mücadelesi, feodalizm, sosyalizm... Dostoyevski’nin, “Hiçbir romanımı bu kadar önemsemedim,” dediği Karamazov Kardeşler, daha yayımlandığı tarihten itibaren kült bir eser haline gelmiş ve tüm dünyada büyük tartışmalara yol açmıştır; XX. yüzyılın temel yazınsal izleklerini belirlemiş ve pek çok yazarı peşinden sürüklemiştir. Kitabın yayımlanmasından kısa bir süre sonra ölen Dostoyevski, tıpkı Suç ve Ceza’da olduğu gibi bu kitabında da insanlığın evrensel sorunlarını ortaya koyar. Karamazov Kardeşler, bu anlamda “kuyuya atılmış bir taş” kadar etkili bir yapıt olarak önemini koruyor.'),
(12, 'Uğultulu Tepeler', 'Emily Bronte', 2, 9.7, 'KİTAPLIK\\DEK\\ugultulu tepeler.jpg', '19. yüzyıl İngiliz edebiyatının önemli kadın yazarlarından biri olan Emily Bronte\'nin ilk ve tek romanı Uğultulu Tepeler, kırık olduğu kadar marazi de olan bir aşk hikâyesi etrafında gezinerek kadın ve erkek, insan ve doğa, aşk ve ölüm, sadakat ve ihanet, hakikat ve yalan gibi ikilikleri kendine özgü bir dille işliyor. Gotik roman türünün başarılı örneklerinden olan Uğultulu Tepeler, karanlık ve puslu evleri, içinde türlü arzuların, tutkuların ve düşüncelerin boyattığı odaları, ter içinde uyanılan kâbusları anlatırken, gerçekçiliği elden bırakmayan bir strateji izliyor. Bu dünyada her şey olanca karmaşıklığına rağmen son derece yalındır. İstekler çözülür, arzular geri çekilir, geriye uğultusuyla yabani bir doğa, sızılı bir yalnızlık ve aşktan taviz veren bir ruh hali kalır: Hem bu ne biçim aşk böyle, sonsuz aşkın bir kar fırtınasına bile dayanamadı! Yaz günleri, ay gökyüzünde parladığı sürece, biz de yataklarımızda rahatça uyuduk; ama kışın ilk fırtınasıyla hemen başını sokacak bir yer arıyorsun. Emily Bronte, kar fırtınasına dayanamayan güneşli aşklardansa soğukları, rüzgârları göze alan bir aşk anlayışından yana atıyor zarını, acıyı ve yalnızlığı göze almak pahasına...'),
(13, 'Sefiller', 'Victor Hugo', 2, 8.7, 'KİTAPLIK\\DEK\\sefiller.jpg', 'Yoksul bir köylü çocuğu olan Jan Valjan,küçük yaşta annesini ve babasını kaybetti. Gidecek başka yeri olmadığı için yedi çocukla dul kalan ablasının yanına gitti. Yetim kalan çocuklara babalık, ablasına da yardım etti. Aradan geçen yıllar onu içine kapalı, sessiz, ama güçlü kuvvetli bir delikanlı yapmıştı. Çektiği sıkıntıdan yakınmıyor, yalnızca ablasının ve yedi çocuğunun karnını nasıl doyuracağını düşünüyordu. Bu hiç de kolay değildi maalesef...Jan Valjan\'ın elinden her iş gelirdi. Yarıcılık, orakçılık, yanaşmahk ve bağ budayıcılığı... Ama bu işler de her zaman bulunamıyor, işsiz kaldığı zamanlar da oluyordu... Jan Valjan, kışın çok soğuk geçtiği ve kıtlık olduğu o yıl da işsiz kaldı. Kendini düşünmüyordu ama evde bir lokma ekmek bekleyen aç yedi çocuk vardı. Karınlarını doyurabilmek için hiçbir çare bulamayınca sonunda bir fırından ekmek çalmak zorunda kaldı.'),
(14, 'Suç ve Ceza', 'Fyodor Dostoyevski', 2, 9.4, 'KİTAPLIK\\DEK\\suç ve ceza.jpg', 'Suç ve Ceza\'da Dostoyevski, ana karakteri Rodion Romanoviç Raskolnikov\'un kişiliğini yeni anti-radikal ideolojik temalarla birleştirmiştir. Ana konu, \"ideolojik zehirlenme\" sonucu yaşanan bir cinayeti içermektedir ve cinayetten kaynaklanan tüm feci ahlaki ve ruhsal sonuçları tasvir etmektedir. Raskolnikov\'un psikolojisi merkeze yerleştirilir ve suçunun ardındaki fikirlerle beraber dikkatlice ele alınır; romanın diğer her özelliği, Raskolnikov\'un yakalandığı acı veren ikilemi aydınlatmaktadır.'),
(15, 'İyi Hissetmek', 'Dr. David d.Burns', 3, 9.8, 'KİTAPLIK\\P\\iyi-hissetmek.jpg', 'Psikiyatri ve davranış bilimleri alanında dünya genelinde adından en çok söz ettiren bilim insanlarından Dr. David D. Burns, İyi Hissetmek adlı kitabıyla okurlarına daha mutlu bir yaşamın kapılarını aralıyor. Kaygı, suçluluk ve özgüvensizlik gibi duyguların bireyin psikolojisi üzerindeki olumsuz tesirini aşmayı amaçlayan kitap, bilimsel olarak test edilmiş tekniklerle okurlarına eşsiz bir terapi sunuyor.\r\n\r\nDaha Aydınlık Bir Bakış Açısı Kazanmak için İlk Adımınızı Atın\r\n\r\nPsikoloji alanında Türkiye’nin öne çıkan yayınevlerinden Psikonet tarafından yayımlanan Bilişsel ve Davranışçı Terapiler serisinin üçüncü kitabı İyi Hissetmek, okurlarına daha olumlu bir bakış açısı ve huzurlu bir yaşam vadediyor.\r\n\r\nEğer siz de kendinize kişisel yaşamınız üzerinde ne kadar etken veya edilgen olduğunuzu soruyorsanız; daha da önemlisi, yaşam yolculuğunuza artık daha güçlü bir yön vermek istiyorsanız, bu kitap size tam da ihtiyacınız olan rehberliği sunuyor. İyi Hissetmek kitabının sayfalarını araladığınızda, bilinmeyenlerinizle yüzleşecek ve onu elinizden düşürmek istemeyeceksiniz.'),
(16, 'İnsan İnsana', 'Doğan Cüceloğlu', 3, 9.6, 'KİTAPLIK\\P\\insan-insana.jpg', 'Bir İnsanın İlişkilerinin Niteliği, O İnsanın Yaşamının Kalitesini Belirler.\r\n\r\nİnsan, ilişkileri içinde sürekli olarak \"yeniden tanımlanan\" bir varlıktır. İnsan ilişkilerinin temelini ise iletişim süreçleri oluşturur.\r\nİki insan birbirinin farkına vardığı anda iletişim başlar. Aynı sosyal ortam içinde yer alan kişilerin söyledikleri sözler ve hareketleri kadar, hareketsizlikleri, susmaları, beden duruşları ve yüz ifadeleri, hepsi anlamlı birer mesaj oluşturur. İyi bir dinleyici, iletişim kurduğu kişinin yalnız söylediklerini değil, yüzü, eli, kolu ve bedeniyle yaptıklarını da \"duyar.\"\r\nBir aracın sürücüsü, yolda kendinden başka araç yokmuş gibi davranırsa, trafik kazası olur. Bir kişi konuşurken, karşısındakini nasıl etkilediğini düşünmeden, kendi bildiği yönde istediğini söylerse \"iletişim kazası\" ortaya çıkar. İlişkilerimizde, verdiğimiz mesajların sorumluluğunun bilincinde olmamız, iletişim kazalarını önler.\r\nBu varsayım toplumsal düzeyde de geçerlidir. Kişi farkında olsun ya da olmasın, toplumla da sürekli ilişki içindedir. Bir toplumda \"Herkes benim gibi düşünmelidir, benim düşünce tarzım en doğrusudur,\" tutumu ağır basarsa, akılcı tartışmalar yerine duygusal çatışmalar ortaya çıkar.\r\nİnsan hayatını mercek altına alıp, insana dair her hikayeden bir anlam çıkarabilen bilgeliğiyle değerli Doğan Cüceloğlu, kimliklerin ötesinde, canların temas içinde olduğu \"insan insana\" bir ilişkinin mümkün olduğunu bize hatırlatıyor. Kalıpları tekrarlamaktan kurtulabilmeniz, insan ilişkilerine anlamsal zenginliği ve derinliği getirebilmeniz için iletişim süreçlerini uygun ve etkili bir biçimde uygulamanıza yönelik bilgi ve becerileri sunuyor. İletişim sorunlarını çözmeden doyumlu bir yaşam sürdürmenin olanaksız olduğunun ve insanın isterse kendini değiştirip geliştirebileceğinin altını çiziyor.'),
(17, 'İnsanın Anlam Arayışı', 'Viktor E.Frankl', 3, 9.1, 'KİTAPLIK\\P\\insanin-anlam-arayisi.jpg', 'Gerçekten ihtiyaç duyulan şey, yşama yönelik tutumumuzdaki temel bir değişmeydi. Yaşamdan ne beklediğimizin gerçekten önemli olmadığını, asıl önemli olan şeyin yaşamın bizden ne beklediği olduğunu öğrenmemiz ve dahası umutsuz insanlara öğretmemiz gerekiyordu. Yaşamın anlamı hakkında sorular sormayı bırakmamız, bunun yerine kendimizi yaşam tarafından her gün, her saat sorgulanan birileri olarak düşünmemiz gerekirdi. Yanıtımızın konuşma ya da meditasyondan değil, doğru eylemden ve doğru yaşam biçiminden oluşması gerekiyordu. Nihai anlamda yaşam, sorunlara doğru çözümler bulmak ve her birey için kesintisiz olarak koyduğu görevleri yerine getirme sorumluluğunu almak anlamına gelir.'),
(18, 'Yavaşla', 'Kemal Sayar', 3, 8.9, 'KİTAPLIK\\P\\yavasla.jpg', 'Gerçekten ihtiyaç duyulan şey, yaşama yönelik tutumumuzdaki temel bir değişmeydi. Yaşamdan ne beklediğimizin gerçekten önemli olmadığını, asıl önemli olan şeyin yaşamın bizden ne beklediği olduğunu öğrenmemiz ve dahası umutsuz insanlara öğretmemiz gerekiyordu. Yaşamın anlamı hakkında sorular sormayı bırakmamız, bunun yerine kendimizi yaşam tarafından her gün, her saat sorgulanan birileri olarak düşünmemiz gerekirdi. Yanıtımızın konuşma ya da meditasyondan değil, doğru eylemden ve doğru yaşam biçiminden oluşması gerekiyordu. Nihai anlamda yaşam, sorunlara doğru çözümler bulmak ve her birey için kesintisiz olarak koyduğu görevleri yerine getirme sorumluluğunu almak anlamına gelir.'),
(19, 'Çalınan Dikkat', 'Johann Hari', 3, 9.5, 'KİTAPLIK\\P\\calinan-dikkat.jpg', 'Böyle az uyuyup çok çalışan, üç dakikada bir faaliyet değiştiren, zaaflarımızı öğrenip manipüle etmek için tasarlanmış sosyal medya siteleri tarafından takip edilip gözlemlenen, stres fazlalığından aşırı tetikte yaşayan, enerjinin sıçrayıp çakılmasına yol açan bir şekilde beslenen, her gün beyne zarar veren toksinlerle dolu bir kimyasal çorbası soluyan bir toplum olmaya devam ettiğimiz takdirde – ciddi dikkat sorunları yaşayan bir toplum olmaya da devam edeceğiz, evet. Ama bunun bir alternatifi var. Örgütlenip karşı koymak – dikkatimizi ateşe veren kuvvetlerle mücadele edip yerlerine iyileşmemize yardımcı olacak kuvvetler geçirmek.'),
(20, 'Atomik Alışkanlıklar', 'James Clear', 4, 9.8, 'KİTAPLIK\\KG\\atomik-aliskanliklar.jpg', 'Atomik Alışkanlıklar size alışkanlıklarınızdan zarar değil, fayda göreceğiniz şekilde hayatınızı yeniden tasarlamayı öğretecek.\r\n\r\nHedefleriniz ne olursa olsun, Atomik Alışkanlıklar size her geçen gün %1 daha iyiye gitmeniz için etkisi kanıtlanmış bir çerçeve sunuyor. Şimdi arkanıza yaslanın, alışkanlıkları şekillendirme konusunda dünyanın önde gelen uzmanlarından biri olan James Clear’dan, iyi alışkanlıklar edinirken kötü alışkanlıklardan kurtulmanın yollarını öğreneceğiz.\r\n\r\nClear, karmaşık konuları günlük yaşamda ve iş hayatında kolayca uygulanabilecek basit davranışlara indirgeme konusundaki başarısıyla tanınmış bir isim. Atomik Alışkanlıklar kitabında, iyi alışkanlıkları kaçınılmaz, kötü alışkanlıkları ise imkânsız hale getirmek için kolay anlaşılır bir kılavuz yaratmak amacıyla biyoloji, psikoloji ve nörobilim alanlarında doğruluğu kanıtlanmış fikirlerden faydalanıyor.\r\n\r\nBu kitap size,\r\n\r\n-  rutininiz bozulduğunda bile yeni alışkanlıklar için nasıl zaman yaratacağınızı, \r\n- motivasyon eksikliği ve iradesizliğin üstesinden gelmeyi,\r\n- ortamınızı başarıya ulaşmanızı kolaylaştıracak şekilde tasarlamayı,\r\n- yoldan çıktığınız zaman kendinizi nasıl toparlayacağınızı ve çok daha fazlasını öğretecek.\r\n\r\nİster şampiyonluk elde etmeyi amaçlayan bir takımın üyesi olun, ister sektörüne yön vermeyi umut eden bir şirket yöneticisi, ister sadece sigarayı bırakmayı, kilo vermeyi veya stresi azaltmayı hayal eden biri, Atomik Alışkanlıklar bir yandan ilerlemeye ve başarıya bakış açınızı değiştirirken bir yandan da alışkanlıklarınızı değiştirmek için ihtiyacınız olan araç ve stratejileri sunuyor.'),
(21, 'Başarı Bedel İster', 'Nurullah Genç', 4, 9.6, 'KİTAPLIK\\KG\\bedel.jpg', 'Kafesleri yutan kafese doğru\r\nAlaca bir at koşar içimde\r\nZamansız, mekânsız nefese doğru\r\nRüveyda\r\n\r\nBizim atlarımız, yaşadığımız dünyadan öte dünyaya doğru,\r\nzamansız ve dünyevi anlamda mekânsız nefese doğru alabildiğine koşan atlardır. Bizim atlarımız hedefleri olan, o hedeflere doğru\r\ndörtnala koşan, hedeflerine ulaştıktan sonra koşuyu bitirmeyen ve daha da ileriye koşan atlardır.\r\nBaşarı sadece hedefle sınırlı değildir. Hedefi aşmaktır başarı. Sezai Karakoç’un mısraları o yüzden hep çarpıcı gelmiştir bana:\r\n“Biz koşu bittikten sonra da koşan atlarız…”\r\n\r\nBaşarı Bedel İster, ülkemizin yetiştirdiği kıymetli akademisyenlerden Prof. Dr. Nurullah Genç’in başarı basamaklarını nasıl binbir zahmetle ama asla pes etmeden çıktığını anlatıyor. Bu yolda yürüyeceklere ders olarak okutulacak şu öğüdü salık veriyor:\r\n\r\n“Hayalleri olmayanın geleceği olmaz.”'),
(22, 'Bir Ömür Nasıl Yaşanır?', 'İlber Ortaylı', 4, 9.1, 'KİTAPLIK\\KG\\bir-omur.jpg', 'Bir ömrü hakkıyla yaşayabilmek ve yaşanan her andan tat alabilmek için önce ne lazımdır?\r\nİnsan hayatı kaç dönemden oluşur ve her bir dönemde neleri tecrübe etmek gerekir? 15, 25, 40 ve 55 yaşları neden birer eşiktir?\r\nİnsan kimden, ne öğrenebilir? Kendi kendini yetiştirmek nasıl mümkün olur?\r\nKişi mesleğini neye göre seçmelidir?\r\nBir işin uzmanı olmak ve o uzmanlık bilgisiyle çalışmak için nelere ihtiyaç vardır?\r\nBir dil, en iyi nasıl ve ne zaman öğrenilir?\r\nEn verimli sonucu alabilmek için nasıl çalışmak gerekir?\r\nSorumluluk sahibi bir insan, kendisi veya çocukları için nasıl bir eğitim modeli aramalıdır?\r\nHayata değer katmak için ne tür insanları arayıp bulmak gerekir?\r\nDoğru kararları alabilmek için en çok kimleri dinlemek gerekir?\r\nEn iyi nasıl seyahat edilir; bir şehir nasıl dolaşılır? Hangi müze, hangi meydan, hangi sokakları görmek için dünyanın bir ucuna kadar gidilebilir?\r\nİyi film, güzel müzik, doğru kitap nedir? Hangi temel eserleri dinlemeli, okumalı ve seyretmeliyiz?\r\nİnsan yaşadığı şehirden tam manasıyla nasıl yararlanabilir?\r\n\"Bir Ömür Nasıl Yaşanır?\", ülkemizin medarıiftiharı olmuş bir tarihçinin gözünden, insanın hayattaki anlam arayışına, bu arayışın tadını nasıl çıkaracağına ve süreç boyunca karşılaşacağı zorluklarla nasıl baş etmesi gerektiğine dair çok özel bir kılavuz.'),
(23, 'Dirilt Kalbini', 'Nouman Ali Khan', 4, 9.3, 'KİTAPLIK\\KG\\dirilt-kalbini.jpg', '\"Teknolojinin önümüze serdiği sınırsız imkânları düşündüğümüzde, bugünün insanını yakalayabilmek için samimi ve bilgece bir üsluba ihtiyacımız var. Gençlerimizin artık eski, kalın kitapları karıştırıp kafa yoracak ne vakitleri var, ne de istekleri. İslâm’ın ilkelerini ve güzelliklerini, tahrif etmeden ama muhatabı taltif ederek sunmamız gerekiyor. Buna ‘din dilinin restorasyonu’ dememiz caiz olursa eğer, yapmamız gereken tam da bu.\r\n\r\n\r\nTürkiye kamuoyunun yakından tanıdığı Nouman Ali Khan, çizmeye çalıştığım çerçeveyi gerçek anlamda dolduran bir isim. İslâm ve Kur’ân hakkındaki derin bilgisini keyifli ve bilgece bir üslupla dile getirip, bunu yaparken kendi hayatından aktardığı sıcak ve sıra dışı anekdotlarla okurunun ilgisini her an canlı tutabiliyor.\r\n\r\n\r\nNouman Ali Khan’ın Dirilt Kalbini adıyla Türkçeye kazandırılan elinizdeki ilk kitabı, günümüze dair bazı meseleler hakkında Kur’ân ayetlerinden damıttığı kıymetli dersler içeriyor. Ayetlerin sadece mesajını değil, ayetlerde geçen ifadelerin dil özelliklerini de laf arasında aktarıyor. Kelimelerin anlamları, anlamlar arasındaki hoş nüanslar, bunların ayetlere kattığı derinlik ve zenginlik… Bütün bunlar, okuyucuyu hem anlatılan konuya hem de bir bütün olarak Kur’ân’ın harikulâde üslubuna yaklaştırıyor, ısındırıyor.\r\n\r\n\r\nDirilt Kalbini’yi okurken, şu ayet hep hatırınızda olsun, zira ayette anlatılan şeyin ayniyle tezahür ettiğini göreceksiniz:\r\n\r\n\r\n‘Allah, hikmeti dilediğine verir. Kime hikmet verilmişse, ona çok büyük bir hayr verilmiş demektir. Bunu ancak, temiz akıl sahipleri düşünüp anlar.’ (Bakara, 269)”   \r\nTaha Kılınç'),
(24, 'Var Mısın?', 'Doğan Cüceloğlu', 4, 9.2, 'KİTAPLIK\\KG\\var-misin.jpg', '“Gençliğimde gergin, stresli, mutsuz günlerim çok oldu. Kendimi suçlu hissettiğim, değersiz gördüğüm dönemler yaşadım. Şimdi hayatım anlamlı, coşkulu ve şükür duygusuyla dopdolu... Neden? İçinde yaşadığım koşulların iyileşmesinden mi? Geliştirdiğim farkındalıkların sonucu mu?”\r\n\r\nDoğan Cüceloğlu\r\n\r\nDoğan Cüceloğlu, yalnızca psikoloji kariyeriyle değil, insan hayatına dokunan ve insana dair her hikâyeden şifa çıkarabilen bilgeliğiyle bu coğrafyanın en önemli ilim insanlarından biri. Seksen yılı aşkın ömrünün bir birikimi olarak, şimdi herkesin merak ettiği “hayati” sorulara en samimi cevaplarını sunuyor. Herkes gibi aslında o da hâlâ savaşıyor, keşfediyor, hayata değer katıyor.\r\nHayatın anlamı nedir?\r\nİnsan kendini nasıl geliştirir?\r\nUmutsuzluk nasıl aşılır?\r\nİçimizdeki öz nasıl ortaya çıkar?\r\nÇevremiz bizi nasıl etkiler?\r\nKime akıl danışılır?\r\nYaşam neleri ödüllendirir?\r\nZihin nasıl işler?\r\n“Biz” olmak için neler yapılmalıdır?\r\nÖmür yolculuğunda neyin önemli olduğunu anlamak, keşif ve merak duygularına sahip çıkmak bir hayatı “kıymetli” kılmak için en önemli meziyetler arasında. Elinizdeki rehber niteliğindeki kitap, yaşamı boyunca bu meziyetlerin peşine düşmüş ve her ânına onları ilmek ilmek işlemiş Doğan Cüceloğlu’nun, Deniz Bayramoğlu ile sohbetlerinden oluşuyor ve herkese şu soruyu soruyor: “Zorluklarla başa çıkmaya, içindeki gücü keşfetmeye VAR MISIN?”'),
(25, '24 Saat Açık Kitapçının Sırrı', 'Robin Sloan', 6, 9.8, 'KİTAPLIK\\F\\24saat.jpg', 'Ekonomik kriz yüzünden işinden olan Clay Jannon için her şey bu soruyla başlıyor. Kendini bir anda Bay Penumbra\'nın 24 Saat Açık Kitapçısı\'nda tezgâhtarlık yaparken bulan Clay, kısa sürede bu dükkânda bir gariplik olduğunu keşfeder. Zaten \'24 Saat Açık Kitapçı\' ne demek ki? Gecenin bir yarısı garip kitaplara \'ihtiyaç\' duyan müşterileriyle bu müşterilerin kaydını en küçük ayrıntısına kadar tutan Penumbra bir şeyler saklıyor olmalı. Tüm bu sorulara cevap arayan Clay (birazcık da arkadaşlarının yardımıyla) hayatını değiştirecek bir serüvene atılıyor. Tozlu kitaplarla son teknolojiyi bir araya getiren, bambaşka insanların yollarını kesiştiren bu serüven sonunda herkesi Penumbra\'nın kitapçısından çok daha uzaklara götürüyor.'),
(26, 'Gece Yarısı Kütüphanesi', 'Matt Haig', 6, 9.3, 'KİTAPLIK\\F\\gece-yarisi-kutuphanesi.jpg', 'Kitap kahramanımız Nora Seed, 35 yaşında bekar bir kadındır. Hayatının en depresif dönemini geçiren Nora işini kaybetmiş ve hayattaki son dayanağı olarak gördüğü kedisi Volts da ölmüştür. Artık yaşamanın bir anlamı olmadığını düşünen Nora bir gece ilaç içerek intihara kalkışır.'),
(27, 'Harry Potter ve Felsefe Taşı', 'J. K. Rowling', 6, 9.3, 'KİTAPLIK\\F\\hp_felsefe.jpg', 'Harry Potter, privet drive 4 numarada teyzesi eniştesi ve kuzeni ile birlikte yaşamaktadır. Annesi ve babasını bir trafik kazasında kaybettiğini sanıyordur. Dursleyler Harry’i hiç sevmezler çünkü onun büyücü olduğunu biliyorlardır ama bundan daha Harry’nin haberi yoktur. Kuzeni Dudley’nin doğum gününde hayvanat bahçesine giderler ve orada işler biraz ters gider. O günün ertesi günü Harry’e hogwarts büyücülük ve cadı yetiştirme okuluna kabul edildiğine dair  bir sürü mektup gelir.'),
(28, 'Harry Potter ve Sırlar Odası', 'J. K. Rowling', 6, 9.4, 'KİTAPLIK\\F\\hp_sirlar.jpg', 'Dursley\'ler o yaz öylesine çekilmez olmuşlardı ki, Harry bir an önce okulu Hogwarts\'a geri dönmek için can atmaktadır. Eşyalarını toplarken ortaya çıkan ev cini Dobby ise onu uyarır: Hogwarts\'a dönerse bir felaket olacaktır. Olur da: Sırlar Odası\'nın açılmasıyla ortaya çıkan karanlık bir güç, Hogwarts\'takileri taşa çevirmeye başlar. Harry, hayatını tehlikeye atarak, Odanın elli yıllık ölümcül gizemini çözmeye çalışır.'),
(31, 'Batık Kente Yolculuk', 'Tuncel Altınköprü', 7, 9.8, 'KİTAPLIK\\Ç\\ufaklık.jpg', 'Marmara Denizi’nin derinliklerinde batık bir ket bulunur. Adı Kyzikos\'tur. Kahramanımız Ufaklık ve kız arkadaşı Gizem, teknoloji harikası tekneleri Deniz Kurdu\'yla bu tarihî kenti keşfe çıkarlar. Ancak kendilerini, yaşayan bir İlk Çağ kentinde, tehlikelerle dolu serüvenin içinde bulurlar. Pek çok kez ölümle yüz yüze gelseler de her seferinde kurtulmayı başarırlar. Binlerce yıldan beri kinle, düşmanlıkla iç içe yaşayan bu kente, arkadaşlığın ve dostluğun tohumlarını atarlar.'),
(32, 'Küçük Prens', 'Antoine de Saint-Exupery', 7, 8.2, 'KİTAPLIK\\Ç\\kucuk-prens.jpg', 'Hikaye pilot olan yazarın Afrika üzerinde uçağının bozulması ve mecburen iniş yapmasıyla başlar. Çölün ortasında kalan pilota yardım edecek hiç kimse bulunmamaktadır. Uyuya kalan pilot incecik garip bir sesle uyanır. Karşısında duran Küçük Prens’tir. Çölün ortasında ikisinden başka kimse yoktur. Küçük Prens karşısında dikilmiş pilottan ona koyun çizmesini istemektedir. Şaşıran pilot rüya gördüğünü düşünür. Ancak karşısında gördüğü gerçektir.'),
(33, 'Sol Ayağım', 'Christy Brown', 7, 8.2, 'KİTAPLIK\\Ç\\sol-ayagim.jpg', 'Christy Brown\'un hayatını konu alan bir otobiyografik romandır. Christy, doğuştan serebral palsi hastası olarak dünyaya gelir ve vücudunun çoğunu hareket ettiremez. Ancak, sadece sol ayağını kullanarak resim yapmayı ve yazmayı öğrenir. Roman, onun zorlu yaşam mücadelesini, ailesiyle olan ilişkilerini, sanatla olan bağını ve toplumsal önyargılarla başa çıkma çabasını anlatır. Christy\'nin azmi ve sanatı, ona hayatında yeni kapılar açar ve onu önemli bir yazar ve sanatçı haline getirir. Bu eser, engellerin üstesinden gelmenin ve insan ruhunun gücünün bir hikayesidir.'),
(34, 'Üşütük Kızın Günlüğü,İstikamet Tatil', 'Anna Cammany', 7, 8.3, 'KİTAPLIK\\Ç\\usutuk-kizin-gunlugu.jpg', 'Acaba şehirde bir tur atmaya çıkacak kimse kaldı mı? Offf... Tatil başladı ve sanki tüm gezegen çökmüş gibi: Görünürde can sıkıntısını atlatacak hiçbir arkadaş yok (umarım bunun suçlusu ben değilimdir…)Ne olursa olsun ben, Lia Abellan, tatil süresince başımı hiç derde sokmayacağıma YEMİN EDERİM. Eğer sokarsam da bunun çok büyük bir dert olmayacağına yemin ederim. Ve çok büyük olursa da… Ekstra-eğlenceli olacağına Yemin ederim! (Üşütük Kız’ın maceraları keşke sonsuza kadar sürse. Okumaya asla doyamıyorum.)');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kitap_id` int(10) UNSIGNED NOT NULL,
  `kullanici_ad` varchar(50) NOT NULL,
  `yorum_text` text NOT NULL,
  `yorum_tarih` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kitap_id`, `kullanici_ad`, `yorum_text`, `yorum_tarih`) VALUES
(1, 1, 'testtt', 'Okuduğum en güzel cinayet kitaplarından biri mükemmeldii', '2024-12-08 10:14:06'),
(2, 34, 'perbul', 'Okumayı bu kitapla sevdim ,çok iyiydi.', '2024-12-08 13:50:38'),
(3, 7, 'asiyan', 'Açıklama kısmı okumak istediğimiz kitaplar hakkında ön bilgi veriyor, faydalı buldum', '2024-12-08 14:00:00'),
(4, 2, 'azra__', 'En güzel Agatha Christie kitaplarından, hem ters köşe hem de tam tahmin ettiğiniz gibi.', '2024-12-08 14:04:34'),
(5, 27, 'azra__', 'Çok güzeldi:)', '2024-12-08 14:05:51'),
(6, 28, 'azra__', 'Mükemmeldi.', '2024-12-08 14:06:33'),
(7, 34, 'azra__', 'Çocukluğumda okuduğum en sevimli kitaplardan biriydi.', '2024-12-08 14:14:11'),
(8, 20, 'azra__', 'Ruh hali:planlarınıza uymak ve rutin oluşturmak istiyorsanız okuyun.\r\n\r\nOkudukça kendinizden parçalar bulacağınız, anlatım olarak okuyucunun yanında olan bir kitap.\r\n ', '2024-12-08 14:16:57'),
(9, 26, 'azra__', 'Ruh hali tavsiyesi: Yalnız ve bunalmış hissediyorsanız\r\nİnanılmaz sürükleyici ve insanın yaşamlara farklı bakış açılarıyla bakmasını sağlayan bir kitap.', '2024-12-08 14:20:59'),
(10, 6, 'azra__', 'Okuması normalden biraz daha zor olan, pek de akıcı olmayan kişilik analizleri için uygun bir kitap.', '2024-12-08 14:22:00'),
(11, 31, 'bbbbbb', 'mükemmel bir serinin efsane bir kitabı okumanızı tavsiye ederim\r\n', '2024-12-08 19:48:00'),
(12, 32, 'bbbbbb', 'Küçük bir prensin büyük maceralarını anlatan mükemmel bir kitap\r\n', '2024-12-08 19:49:08'),
(13, 33, 'bbbbbb', 'Hüzün ve mutluluğun bir arada buluştuğu o kitap...Çok Güzel\r\n', '2024-12-08 19:50:03'),
(14, 34, 'bbbbbb', 'Mükemmeldi kardeşlerimle bile okudum.Tam 4 kez bitirdim .Hala okumak istiyor canım', '2024-12-08 19:51:58'),
(15, 28, 'bbbbbb', 'Okumaya başladığımda resmen fantastik bir dünyaya ışınlandım.Dünyanın en iyi kitabı :D', '2024-12-08 19:53:57'),
(16, 27, 'bbbbbb', 'Mükemmeldi,aşırı iyi  kitaba puanım 10/1000000', '2024-12-08 19:55:26'),
(17, 20, 'bbbbbb', 'Atomik Alışkanlıklar kitabı çok güzel,bu kitap sayesinde rutinler oluşturdum kendime.Her gün başucumda duran bu kitabı çok beğendim.', '2024-12-08 19:59:30'),
(18, 25, 'bbbbbb', 'Bu kitabı hiç duymamıştım.Kütüphanede dolaşırken gözüme takıldı.Elime alıp sayfaları karıştırdım ve çok ilgimi çekti.Okudum ve çok beğendim', '2024-12-08 20:06:32'),
(19, 26, 'bbbbbb', 'Gayet güzeldi.Tavsiye ederim.Ben okuduğumdan çok memnunum.\r\n', '2024-12-08 20:07:52'),
(20, 18, 'gizem_ari', 'Ruh hali tavsiyesi: Hayat koşturmacası içerisinde kaybolmuş.\r\nHayatımızı düşünce anlamında nasıl etkileyebileceğimizle ilgili güzel saptamalar sağlayan bir kitap.', '2024-12-10 08:09:08'),
(21, 21, 'gizem_ari', 'Ruh hali tavsiyesi:Bunalmış hissetmek.\r\nKültürümüzden alıntılarla içimizden biri olarak kaleme almış sayın hocam. Okudukça kendinizi ve değiştirmek istediklerinizi görüyorsunuz.', '2024-12-10 08:11:06'),
(22, 3, 'gizem_ari', 'Ruh hali tavsiyesi: merak duymak ve heyecanlanmak için.\r\nOkudukça aklınızdaki ihtimallerin artacağı, katilin ve diğer karakterlerin kişilik analizlerini de yapacağınız merak uyandırıcı bir kitap.\r\n', '2024-12-10 08:12:53'),
(23, 31, 'gizem_ari', 'Çocukluğumun en güzel serüven kitabı. Bana kitap okumayı sevdiren ve içimdeki meraklı küçük kızı uyandıran bir kitaptı.', '2024-12-10 08:16:00'),
(24, 21, 'BATUHAN', 'RUHUMUN DERİNLEKLERİNE BU KİTAPTA İÇSEL ÇATIŞMALARIMIN BİR NEBZE OLSUN SAKİNLEŞTİĞİNİ HİSSETTİM .BAŞARININ VE İNANCIN ARASINDAKİ BAĞLATI KİTAPTA SENİ SÜRÜKLEYEN KISIMLARDI .HAYATIMA YÖN VERMEDE ETKİSİ OLDU NURULLAH DEDEMİN..KESİNLİKLE OKUNMASI GEREKEN BİR KİTAP.SAYGILAR NURULLAH DEDE\r\n', '2024-12-11 10:09:41'),
(25, 1, 'murattt', 'güzeldi', '2024-12-13 07:29:15'),
(26, 26, 'gizem_ari', 'sdfgjh', '2024-12-30 10:30:50');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kullanici_ID`),
  ADD UNIQUE KEY `kullanici_ID` (`kullanici_ad`) USING BTREE;

--
-- Tablo için indeksler `tbl_kategoriler`
--
ALTER TABLE `tbl_kategoriler`
  ADD PRIMARY KEY (`kategori_ID`);

--
-- Tablo için indeksler `tbl_kitaplar`
--
ALTER TABLE `tbl_kitaplar`
  ADD PRIMARY KEY (`kitap_ID`),
  ADD KEY `kategori_ID` (`kategori_ID`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`),
  ADD KEY `kitap_id` (`kitap_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kullanici_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_kategoriler`
--
ALTER TABLE `tbl_kategoriler`
  MODIFY `kategori_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_kitaplar`
--
ALTER TABLE `tbl_kitaplar`
  MODIFY `kitap_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `tbl_kitaplar`
--
ALTER TABLE `tbl_kitaplar`
  ADD CONSTRAINT `tbl_kitaplar_ibfk_1` FOREIGN KEY (`kategori_ID`) REFERENCES `tbl_kategoriler` (`kategori_ID`);

--
-- Tablo kısıtlamaları `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD CONSTRAINT `yorumlar_ibfk_1` FOREIGN KEY (`kitap_id`) REFERENCES `tbl_kitaplar` (`kitap_ID`);
--
-- Veritabanı: `neu`
--
CREATE DATABASE IF NOT EXISTS `neu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `neu`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE `dersler` (
  `id` int(10) NOT NULL,
  `ders_ad` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ders_kredi` int(2) NOT NULL,
  `ders_akts` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(10) NOT NULL,
  `kadi` varchar(25) NOT NULL,
  `sifre` varchar(25) NOT NULL,
  `durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `dersler`
--
ALTER TABLE `dersler`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
