***
# 1-) T-SQL SQL Server Giriş, Veritabanı Oluşturma ve Tablo Oluşturma
- SQL Server adı üstünde bir server'dır. Access gibi sadece bir veri tutan yapı değildir. Server olduğundan dolayı üzerinde birden fazla yapı çalışmaktadır. Bunlardan bir tanesi de database dediğimiz veritabanıdır.

***
# 2-) T-SQL Northwind Veritabanını İndirme ve Yükleme
[NORTHWIND TURKCE]("")

***
# 3-) T-SQL Özellikleri ve Use Komutu
- Transact SQL(T-SQL) Dili Ozellikleri

- Yorum Satiri -- ifadesidir.

- T-SQL ile veri cekme, kaydetme, guncelleme, ve silme gibi islemlerle veritabanina mudahale edebilir, database olusturma - silme, tablo olusturma - silme islemlerinin gerceklestirebilir ve diger veritabani yapilari ve programatik islemlerde kullanacagimiz veritabani programlama araclarını olusturabiliriz.

- T-SQL buyuk kucuk harf duyarliligina sahip bir dil degildir.
--MUSA = Musa = MuSa 

- T-SQL programlama dili bizim icin veritabanina belirli bir yaklasim sergilememizi saglayan gramersel bir dildir.

- T-SQL komutları ne yazarsak yazalım belirli bir veritabani uzerinde calisacaktir ve T-SQL komutlarini calistiracagimiz veritabanini bir yerde belirlememiz gerekir. Neden? Server'da birden fazla veritabani bulunabiliyor. Haliyle burada yazdigim TSQL komutlarinin hangi veritabaninda calisacagina belirlemem gerekmektedir.

- Komutlarla veritabanını secmek icin `USE` komutunu kullanırız. 

```SQL
USE Northwind
```

***
## 4-) T-SQL Select Komutu

```SQL
USE Northwind
```
- SELECT KOMUTU
  * Verdiğimiz herhangi bir değeri bize tablo olarak döndüren bir komuttur.

```SQL
SELECT 3
SELECT 'MUSA'
PRINT 'MUSA'
SELECT 3,5,7
SELECT 'MUSA', 'UYUMAZ',24
```

- `*` Karakteri tablonun içerisindeki bütün kolonları ifade eden bir karakterdir.

```SQL
SELECT * FROM Personeller
SELECT Adi,SoyAdi FROM Personeller
```

- ALIAS ATAMA

- Ben bir tabloyu `SELECT` ile çektiğim zaman tablo içindeki kolonların isimleri neyse `SELECT`in sonuç olarak oluşturduğu tabloda o kolon isimleri fiziksel kolondakilerle aynıdır. Haliyle ben buradaki isimleri değiştirebilirim.

- Yani kolona bir nitelik atıyoruz.

```SQL
SELECT 3 AS DEĞER
SELECT 3 DEĞER
SELECT 'MUSA' ADI, 'UYUMAZ' SOYADI
SELECT Adi İSİMLER, SoyAdi SOYİSİMLER FROM Personeller
```

- Boşluk Karakteri Olan Alias Atama

```SQL
SELECT 1453 İSTANBULUN FETHİ
SELECT 1453 [İSTANBULUN FETHİ]
```

-Boşluk Karakteri Olan Tabloyu Sorgulama

```SQL
SELECT * FROM Satis Detaylari
SELECT * FROM [Satis Detaylari]
```

- Kolonları Birleştirme

```SQL
SELECT Adi,SoyAdi FROM Personeller
SELECT Adi + ' ' + SoyAdi [PERSONEL BİLGİLERİ] FROM Personeller
```

- Farklı Tipte Kolonları Birleştirme

- İki farklı tipteki kolon direkt olarak `+` operatörü ile birleştirilemez. Bu yüzden birleştirme işleminde aynı türe dönüştürmek gerekir

```SQL
SELECT Adi + ' ' + IseBaslamaTarihi FROM Personeller
SELECT Adi + ' ' + CONVERT(NVARCHAR, IseBaslamaTarihi) FROM Personeller
SELECT Adi + ' ' + CAST(IseBaslamaTarihi AS NVARCHAR) FROM Personeller
```

***
# 5-) T-SQL Where Komutu
```SQL
USE Northwind
```

## SELECT Sorgularında (Where) Şartı Yazmak

- SELECT sorgularında elde ettiğimiz tablolara belirli şartlar yazmamızı sağlar.

```SQL
SELECT * FROM Personeller
```

- Personeller tablosunda şehri London olanları listeleyelim.
```SQL
SELECT * FROM Personeller WHERE Sehir = 'London'
```

- Personeller tablosunda bağlı çalıştığı kişi sayısı 5'ten küçük olanları listeleyelim.
```SQL
SELECT * FROM Personeller WHERE BagliCalistigiKisi < 5
```

## AND Operatörü
- Personeller tablosunda şehri London ve ülkesi UK olanları listeleyelim.
```SQL
SELECT * FROM Personeller WHERE Sehir = 'London' AND Ulke='UK'
```

## OR Operatörü
-- Personeller tablosunda UnvanEki 'Mr.' olan veya şehri Seattle olan tüm personelleri listeleyelim.
```SQL
SELECT * FROM Personeller WHERE UnvanEki = 'Mr.' OR Sehir = 'Seattle'
```

## Karışık Örnekler
- Adı Robert soyadı King olan personelin tüm bilgilerini çek
```SQL
SELECT * FROM Personeller WHERE Adi='Robert' AND SoyAdi='King'
```

- PersonelID'si 5 olan personeli getir.
```SQL
SELECT * FROM Personeller WHERE PersonelID=5
```

- PersonelID'si 5'ten büyük ve eşit olan tüm personelleri getir.
```SQL
SELECT * FROM Personeller WHERE PersonelID >=5
```

- `<>` Eşit Değilse
- `=`  Eşitse
- `<=` Küçük ve Eşitse
- `>=` Büyük ve Eşitse

## Fonksiyon Sonuçlarını Şart Olarak Kullanmak
- 1993 yılında işe başlayanları listele.
```SQL
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi)=1993
```
- 1992 yılından sonra işe başlayanları listele
```SQL
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi)>1992
```

- Doğum günü ayın 29'u olmayan personelleri listeleyelim
```SQL
SELECT * FROM Personeller WHERE DAY(DogumTarihi) <> 29
```

- Doğum yılı 1950 ile 1965 yılları arasında olan personelleri getirelim
```SQL
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) BETWEEN 1950 AND 1965
SELECT * FROM Personeller WHERE YEAR(DogumTarihi)> 1950 AND YEAR(DogumTarihi) < 1965
```

- Yaşadığı şehrin London, Tacoma ve Kirkland olan personellerin adını listeleyelim
```SQL
SELECT Adi FROM Personeller WHERE Sehir IN('London','Tacoma','Kirkland')
SELECT Adi FROM Personeller WHERE Sehir ='London' OR Sehir = 'Tacoma' OR Sehir = 'Kirkland'
```

***
# 6-) T-SQL Where Komutunda Between Komutunun Kullanımı
## BETWEEN Komutu
- Eğer ki WHERE şartı ile belirli bir değer aralığını belirtilecekse yani şartımız belirli bir değer aralığıysa eğer BETWEEN komutu ile daha pratik şekilde şartımızı yazabiliriz.

- Doğum yılı 1950 ile 1965 yılları arasında olan personelleri getirelim
```SQL
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) BETWEEN 1950 AND 1965
```

***
# 7-) T-SQL Where Komutunda In Komutunun Kullanımı
## IN Komutu
- Bir kolonda OR komutunu kullanarak yaptığımız şartları IN komutu ile daha pratik bir şekilde yapabilmekteyiz.

- Yaşadığı şehrin London Tacoma ve Kirkland olan personellerin adlarını listeleyelim.
```SQL
SELECT Adi FROM Personeller WHERE Sehir IN('London','Tacoma','Kirkland')
```

***
# 8-) T-SQL Like Sorguları
## LIKE Sorguları
- Veriler içerisinde belirli şartlar koyabildiğimiz bir sorgulama çeşididir. 
- WHERE'de kolonlara belirli şartlar koyarken LIKE sorgusuyla birlikte kolonlar içerisindeki verilere şartlarımızı koyabiliriz.

## `%`(Genel Önemli Değil) Operatörü
- İsminin baş harfi j olan personellerin adını soyadını yazdıralım
```SQL
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'j%'
```

- İsminin son harfi y olan personellerin adını soyadını yazdıralım
```SQL
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE '%y'
```

- İsminin son üç harfi ert olan personeli getirelim
```SQL
SELECT * FROM Personeller WHERE Adi LIKE '%ert'
```

- İsminin ilk harfi r, son harfi t olan personeli getirelim
```SQL
SELECT * FROM Personeller WHERE Adi LIKE 'r%t'
```

- Gereksiz bir kullanım
```SQL
SELECT * FROM Personeller WHERE Adi LIKE 'r%' AND Adi LIKE '%t'
```

- İsminde an geçen personelin adını yazdıralım
```SQL
SELECT Adi FROM Personeller WHERE Adi LIKE '%an%'
```

- İsminin baş harfi n olan ve içerisinde an geçen personeli getirelim.
```SQL
SELECT * FROM Personeller WHERE Adi LIKE 'n%an%'
```

- Gereksiz Bir kullanım
```SQL
SELECT * FROM Personeller WHERE Adi LIKE 'n%' AND Adi LIKE '%an%'
```

## `_`(Özel Önemli Değil) Operatörü
- O anki karakterin önemli olmadığını belirtir.

- İsminin ilk harfi a ikinci harfi farketmez ve üçüncü harfi d olan personeli getirelim
```SQL
SELECT * FROM Personeller WHERE Adi LIKE 'a_d%'
```

- İsminin ilk harfi m ikinci,üçüncü,dördüncü farketmez ve beşinci harfi a olan personeli getirelim
```SQL
SELECT * FROM Personeller WHERE Adi LIKE 'm___a%'
```

## `[]`(ya da) Operatörü
- Arka planda OR mantığıyla çalışır

- İsminin ilk harfi n ya da m ya da r olan personelleri getirelim
```SQL
SELECT * FROM Personeller WHERE Adi LIKE '[nmr]%'
```

- İsminin içerisinde a ya da i geçen personelleri getirelim
```SQL
SELECT * FROM Personeller WHERE Adi LIKE '%[ai]%'
```

## `[*-*]`(Alfabetik Arasında) Operatörü
- iki harf arasındaki tüm harfleri kapsayan bir operatördür.

- İsminin baş harfi a ile k arasında alfabetik sıraya göre herhangi bir harf olan personellerin adını yazdıralım
```SQL
SELECT Adi FROM Personeller WHERE Adi LIKE '[a-k]%'
```

## `[^*]`(Değil) Operatörü
- O anki bulunduğumuz karakterin değilini ifade eder.
- İsminin baş harfi a olmayan personelleri getirelim.
```SQL
SELECT * FROM Personeller WHERE Adi LIKE '[^a]%'
```

- İsminin baş harfleri an olmayan personelleri getirelim
```SQL
SELECT * FROM Personeller WHERE Adi LIKE '[^an]%'
```

***
# 9-) T-SQL Like Sorgularında Escape(Kaçış) Karakterleri
## Escape(Kaçış) Karakterleri
- LIKE sorgularında kullandığımız %, _, [] gibi özel ifadeler eğer ki verilerimiz içerisinde geçiyorsa sorgulama esnasında hata ile karşılaşabiliriz. Böyle durumlarda bu ifadelerin özel ifade olmadığını escape karakterleri ile belirleyebiliriz.

## `[]` Operatörü İle
## ESCAPE Komutu İle

```SQL
SELECT * FROM Personeller WHERE Adi LIKE '[_]%'
```

```SQL
SELECT * FROM Personeller WHERE Adi LIKE '?_%' ESCAPE '?'
```

# 10-) T-SQL Aggregate Fonksiyonları
## AGGREGATE FONKSİYONLAR
- Tüm veriler tüm satırlar üzerinde işlem yapmamızı sağlayan fonksiyonlardır.

- AVG : Ortalama alır.
```SQL
SELECT AVG(PersonelID) FROM Personeller
```

- MAX : En büyük değeri bulur.
```SQL
SELECT MAX(PersonelID) FROM Personeller
```

- MIN : En küçük değeri bulur.
```SQL
SELECT MIN(PersonelID) FROM Personeller
```

- COUNT : Toplam sayısını verir.
```SQL
SELECT COUNT(*) FROM Personeller
SELECT COUNT(Adi) FROM Personeller
```

- SUM : Toplamını verir.
```SQL
SELECT SUM(NakliyeUcreti) FROM Satislar
```

# 11-) T-SQL String Fonksiyonları
## STRING FONKSIYONLAR
- Metinsel değerler üzerinde işlem yapmamızı sağlayan fonksiyonlardır.

- LEFT : Soldan(baştan) belirtilen sayıda karakteri getirir.
```SQL
SELECT LEFT(Adi,2) FROM Personeller
```

- RIGHT : Sağdan(sondan) belirtilen sayıda karakteri getirir.
```SQL
SELECT RIGHT(Adi,3) FROM Personeller
```

- UPPER : Büyük harfe çevirir.
```SQL
SELECT UPPER(Adi) FROM Personeller
```

- LOWER : Küçük harfe çevirir.
```SQL
SELECT LOWER(Adi) FROM Personeller
```

- SUBSTRING : Belirtilen index'ten itibaren belirtilen sayıda karakter getirir
```SQL
SELECT SUBSTRING(SoyAdi,3,2) FROM Personeller
```

- LTRIM : Soldan boşlukları keser.
```SQL
SELECT '              MUSA'
SELECT LTRIM('              MUSA')
```
- RTRIM : Sağdan boşlukları keser.
```SQL
SELECT 'UYUMAZ              '
SELECT RTRIM('UYUMAZ              ')
```

- REVERSE : Tersine çevirir.
```SQL
SELECT REVERSE(Adi) FROM Personeller
```

- REPLACE : Belirtilen ifadeyi belirtilen ifade ile değiştirir.
```SQL
SELECT REPLACE('Benim Adım MUSA', 'MUSA','SERHAT')
```

- CHARINDEX : Belirtilen karakterin veri içinde sıra numarasını verir.
- Index numarasını değil sıra numarasını verir!!!
```SQL
SELECT Adi,CHARINDEX('r',Adi) FROM Personeller
SELECT MusteriAdi, CHARINDEX(' ',MusteriAdi) FROM Musteriler
```


- CHARINDEX Örnek
- Müşteriler tablosunun MusteriAdi kolonundan sadece adları çekelim.
```SQL
SELECT MusteriAdi FROM Musteriler
SELECT MusteriAdi,LEFT(MusteriAdi,CHARINDEX(' ',MusteriAdi)) FROM Musteriler
SELECT SUBSTRING(MusteriAdi,0, CHARINDEX(' ',MusteriAdi)) FROM Musteriler
```


- Müşteriler tablosunun MusteriAdi kolonundan sadece soyadları çekelim.
```SQL
SELECT SUBSTRING(MusteriAdi, CHARINDEX(' ', MusteriAdi),LEN(MusteriAdi) - (CHARINDEX(' ', MusteriAdi) - 1)) FROM Musteriler
```

***
# 12-) T-SQL Sayısal Değer İşlemleri
## Sayısal Değer İşlemleri

```SQL
SELECT 3 + 2
SELECT 3 * 3
SELECT 4 / 2
SELECT 9 - 7
```

- `PI` : Pi sayısını verir.
```SQL
SELECT PI()
```

- `SIN` : Sinüs alır.
```SQL
SELECT SIN(PI())
SELECT SIN(90)
```

- `POWER` : Üs alır.
```SQL
SELECT POWER(2,3)
```

- `ABS` : Mutlak değer alır.
```SQL
SELECT ABS(-12)
```

- `RAND` : 0 - 1 arasında rastgele sayı üretir.
```SQL
SELECT RAND()
```

- `FLOOR` : Yuvarlama yapar.
```SQL
SELECT FLOOR(RAND() * 100)
SELECT ROUND(RAND() * 10,0)
```

# 13-) T-SQL Tarih Fonksiyonları
## Tarih Fonksiyonları

- GETDATE : Bugünün tarihini verir.
```SQL
SELECT GETDATE()
```

- DATEADD : Verilen tarihe verildiği kadar gün, ay, yıl ekler
```SQL
SELECT DATEADD(DAY,999,GETDATE())
SELECT DATEADD(MONTH,999,GETDATE())
SELECT DATEADD(YEAR,999,GETDATE())
```

- DATEDIFF : İki tarih arasında günü, ayı veya yılı hesaplar.
```SQL
SELECT DATEDIFF(DAY,'14.02.1999',GETDATE())
SELECT DATEDIFF(MONTH,'14.02.1999',GETDATE())
SELECT DATEDIFF(YEAR,'14.02.1999',GETDATE())
```

- DATEPART : Verilen tarihin haftanın, ayın yahut yılın kaçıncı günü olduğunu hesaplar
```SQL
SELECT DATEPART(DW,GETDATE())
SELECT DATEPART(MONTH,GETDATE())
SELECT DATEPART(DAY,GETDATE())
```

***
# 14-) T-SQL Top Komutu 
## TOP Komutu
- SELECT sorgusu neticesinde elde ettiğimiz tablodan ilk kaç kaydın gösterileceğini belirlememizi sağlar.
```SQL
SELECT TOP 3 * FROM Personeller
```

# 15-) T-SQL Distinct Komutu
## DISTINCT Komutu
- Bir kolondaki benzer olan verileri teke indirmemizi sağlayan bir komuttur.
```SQL
SELECT DISTINCT Sehir FROM Personeller
```

***
# 16-) T-SQL Group By İşlemi
## GROUP BY
- Eğer ki SELECT sorgusunda bir normal kolon bir de ayriyetten aggregate fonksiyonu çağırılıyorsa normal olan kolonu gruplamanız gerekecektir.

```SQL
SELECT KategoriID,COUNT(*) FROM Urunler
GROUP BY KategoriID

SELECT PersonelID,COUNT(*) FROM Satislar
GROUP BY PersonelID

SELECT PersonelID,SUM(NakliyeUcreti) FROM Satislar
GROUP BY PersonelID
```

***
# 17-) T-SQL Group By İşleminde Where Şartı Yazma
## GROUP BY İşleminde WHERE Şartı Kullanma
- Grammer'de WHERE şartı GROUP BY'dan önce yazılmalıdır.

```SQL
SELECT KategoriID,COUNT(*) FROM Urunler WHERE KategoriID > 5 GROUP BY KategoriID

SELECT PersonelID,COUNT(*) FROM Satislar WHERE PersonelID < 4 GROUP BY PersonelID
```

***
# 18-) T-SQL Having Komutu
## GROUP BY İşleminde HAVING Komutunu Kullanarak Şart Oluşturma
- WHERE normal kolonlar üzerinde şart uygulayacağımız zaman kullandığımız bir komuttur. Lakin HAVING aggregate fonksiyonu üzerinde şart uygulayacaksak kullandığımız bir komuttur.

- HAVING komutu GROUP BY'dan sonra yazılır.

```SQL
SELECT KategoriID,COUNT(*) FROM Urunler WHERE KategoriID > 5 GROUP BY KategoriID HAVING COUNT(*) > 6
```

***
# 19-) T-SQL Tabloları Yan Yana Birleştirme
## Tabloları Yan Yana Birleştirme
- Her bir satıra eş değer farklı bir satır türetiyor türetemediklerine de null değer atıyor.

```SQL
SELECT * FROM Personeller
SELECT * FROM Satislar

SELECT * FROM Personeller P,Satislar S WHERE P.PersonelID = s.PersonelID
```

***
# 20-) T-SQL Inner Join'de İki Tabloyu Birleştirme
## INNER JOIN
- Birden fazla tabloyu ilişkisel kolonlar aracılığıyla birleştirip tek bir tablo haline getiren bir yapıdır.

## Genel Mantık
- SELECT * FROM Tablo1 INNER JOIN TABLO2 ON Tablo1.IlişkiliKolon = Tablo2.IlişkiliKolon

- Tablolara alias tanımlanabilir.
- SELECT * FROM Tablo1 T1 INNER JOIN TABLO2 T2 ON T1.IlişkiliKolon = T2.IlişkiliKolon

## İki Tabloyu İlişkisel Birleştirme
- Hangi personel hangi satışları yapmıştır. (Personeller, Satışlar)
```SQL
SELECT * FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID
```

- Hangi ürün hangi kategoride. (Urunler, Kategoriler)
```SQL
SELECT U.UrunAdi,K.KategoriAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID
```

## WHERE Komutunun Kullanımı
- Beverages Kategorisindeki ürünlerim. (Urunler, Kategoriler)
```SQL
SELECT U.UrunAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Beverages'
```

- Beverages kategorisindeki ürünlerimin sayısı kaçtır. (Urunler, Kategoriler)
```SQL
SELECT COUNT(U.UrunAdi) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Beverages'
```

- Seafood kategorisindeki ürünlerin listesi (Urunler, Kategoriler)
```SQL
SELECT U.UrunAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Seafood'
```

- Hangi Satışı hangi çalışanım yapmış? (Satışlar, Personeller)
```SQL
SELECT S.SatisID, P.Adi + ' ' +P.SoyAdi FROM Satislar S INNER JOIN Personeller P ON P.PersonelID = S.PersonelID
```

- Faks numarası 'NULL' olmayan tedarikçilerinden alınmış ürünler nelerdir? (Urunler, Tedarikçiler)
```SQL
SELECT U.UrunAdi FROM Urunler U INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE T.Faks <> 'NULL'
SELECT U.UrunAdi FROM Urunler U INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE T.Faks IS NOT NULL
```

***
# 21-) T-SQL Inner Join'de İkiden Fazla Tabloyu Birleştirme
## INNER JOIN
## İkiden Fazla Tabloyu İlişkisel Birleştirme
- İkiden fazla tabloyu ilişkisel bir şekilde birleştirme yöntemine giderken dikkat etmemiz gereken nokta birleştirme esnasında birleştirdiğimiz tablonun diğer tabloyla ortak olan bir ilişkisel kolona ait olması gerekmektedir.

- 1997 yılından sonra Nancy'nin satış yaptığı firmaların isimleri : (1997 dahil) (Musteriler, Satislar, Personeller)
```SQL
SELECT M.SirketAdi FROM Musteriler M INNER JOIN Satislar S ON M.MusteriID = S.MusteriID INNER JOIN Personeller P ON P.PersonelID = S.PersonelID WHERE P.Adi = 'Nancy' AND YEAR(S.SatisTarihi) >= 1997
```

- Limited olan tedarikçilerden alınmış Seafood kategorisindeki ürünlerimin toplam satış tutarı. (Urunler, Kategoriler, Tedarikçiler)
```SQL
SELECT SUM(U.BirimFiyati * U.HedefStokDuzeyi) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE K.KategoriAdi = 'Seafood' AND T.SirketAdi LIKE '%Ltd.%'
```

***
# 22-) T-SQL Inner Join'de Aynı Tabloyu İlişkisel Olarak Birleştirme
## Inner Join
## Aynı Tabloyu İlişkisel Olarak Birleştirme
- Personellerimin bağlı olarak çalıştığı kişileri listele? (Personeller, Personeller)
```SQL
SELECT P1.Adi, P2.Adi FROM Personeller P1 INNER JOIN Personeller P2 ON P1.BagliCalistigiKisi = P2.PersonelID
```

***
# 23-) T-SQL Inner Join'de Group By İşlemi
## INNER JOIN
## INNER JOIN'DE GROUP BY
- Hangi personelim(adı ve soyadı ile birlikte) toplam kaç adetlik satış yapmış. Satış adedi 100'den fazla olanlar ve personelin adının baş harfi M olan kayıtlar gelsin. (Personeller, Satışlar)
```SQL,
SELECT P.Adi + ' ' + P.SoyAdi ,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID WHERE P.Adi LIKE 'M%'
GROUP BY P.Adi + ' ' + P.SoyAdi 
HAVING COUNT(*) > 100
```

- Seafood kategorisindeki ürünlerin sayısı (Urunler, Kategoriler)
```SQL
SELECT COUNT(*) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
WHERE K.KategoriAdi = 'Seafood'
```

- Hangi personelim toplam kaç adet satış yapmış (Personeller, Satışlar)
```SQL
SELECT P.Adi,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID
GROUP BY P.Adi
```

- En çok satış yapan personelim (Personeller, Satışlar)
```SQL
SELECT TOP 1 P.Adi,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID
GROUP BY P.Adi
ORDER BY COUNT(S.SatisID) DESC
```

- Adında 'a' harfi olan personellerin satış id'si 10500'den büyük olan satışlarının toplam tutarını(miktar * birim fiyat) ve bu satışların hangi tarihte gerçekleştiğini listele. (Personeller, Satışlar, Satış Detayları)
```SQL
SELECT S.SatisTarihi,SUM(SD.Miktar * SD.BirimFiyati) TOPLAMTUTAR FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID 
INNER JOIN [Satis Detaylari] SD ON SD.SatisID = S.SatisID
WHERE P.Adi LIKE '%a%' AND S.SatisID > 10500
GROUP BY S.SatisTarihi
```

***
# 24-) T-SQL Outer Join(Left, Right, Full) İle Tabloları Birleştirme
## OUTER JOIN
- INNER JOIN'de eşleşen kayıtlar getiriliyordu. OUTER JOIN'de ise eşleşmeyen kayıtlarda getirilmektedir.

## LEFT JOIN
- JOIN ifadesinin solundaki tablodan tüm kayıtları getirir. Sağındaki tablodan eşleşenleri yan yana eşleşmeyenleri null olarak getirir.
```SQL
SELECT * FROM OYUNCULAR O LEFT OUTER JOIN FİLMLER F ON F.FILMID = O.FILMID
SELECT * FROM FİLMLER O LEFT OUTER JOIN OYUNCULAR F ON F.FILMID = O.FILMID
```
-VEYA
```SQL
SELECT * FROM OYUNCULAR O LEFT JOIN FİLMLER F ON F.FILMID = O.FILMID
SELECT * FROM FİLMLER O LEFT JOIN OYUNCULAR F ON F.FILMID = O.FILMID
```
## RIGHT JOIN
- JOIN'in sağındaki tablonun tamamını getirecek, Solundakinden eşleşenleri aynı satırda eşleşmeyenleri de null olarak getirecek
```SQL
SELECT * FROM OYUNCULAR O RIGHT OUTER JOIN FİLMLER F ON F.FILMID = O.FILMID
SELECT * FROM FİLMLER O RIGHT OUTER JOIN OYUNCULAR F ON F.FILMID = O.FILMID
```
-- VEYA
```SQL
SELECT * FROM OYUNCULAR O RIGHT JOIN FİLMLER F ON F.FILMID = O.FILMID
```

## FULL JOIN
-  Joinin iki tarafındaki tablolardan eşleşen eşleşmeyen hepsini getirir.
```SQL
SELECT * FROM OYUNCULAR O FULL OUTER JOIN FİLMLER F ON F.FILMID = O.FILMID
```
- VEYA
```SQL
SELECT * FROM OYUNCULAR O FULL JOIN FİLMLER F ON F.FILMID = O.FILMID
```

***
# 25-) T-SQL Cross Join İle Tablo Birleştirme
## CROSS JOIN 
- İki tablo arasında kartezyen çarpımı yapar. Kartezyen çarpımıyla birleştirir. İki küme arasında elemanları tek tek birbirleriyle eşleştirme işlemine kartezyen işlemi deriz.
- CROSS JOIN kullanarak iki tabloyu birleştirirsek eğer elde edilen sonuç iki tablonun eleman sayılarının çarpımları kadardır.
- WHERE ile şart uygulayamayız.

```SQL
SELECT COUNT(*) FROM Personeller
SELECT COUNT(*) FROM Bolge

SELECT P.Adi,B.BolgeID FROM Personeller P CROSS JOIN BOLGE B
```

***
# 26-) T-SQL DML Giriş
## DML (Data Manipulation Language)
## SELECT, INSERT, UPDATE, DELETE
- SELECT ... -> Veritabanımızdaki tabloları elde etmemizi sağlayan komuttur.
- INSERT ... -> Veritabanımızdaki herhangi bir tabloya veri eklememizi sağlayan komuttur.
- UPDATE ... -> Veritabanımızdaki herhangi bir tablomuzda bulunan herhangi bir veriyi güncellememizi sağlayan komuttur.
- DELETE ... -> Veritabanımızdaki herhangi bir tablomuzda bulunan veriyi silmemizi sağlayan komuttur.

## SELECT : Tablomuzdan veri elde etmemizi sağlayan bir komuttur.
```SQL
SELECT * FROM Personeller
```

***
# 27-) T-SQL DML Insert Komutu 1
## INSERT 
- `INSERT [TABLO ADI](KOLONLAR) VALUES(DEĞERLER)`
```SQL
INSERT Personeller(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
INSERT PERSONELLER VALUES('UYUMAZ','MUSA','YAZILIM VE VERİTABANI UZMANI','YM', '14.02.1999',GETDATE(),'ESKİŞEHİR','İÇ ANADOLU','26600','TÜRKİYE','02221111111',NULL,NULL,NULL,NULL,NULL)
```

## [Dikkat Edilmesi Gerekenler!!!]
- INTO Komutu İle Yazılabilir
```SQL
INSERT INTO Personeller(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
```

- Kolonun kabul ettiği veri tipi ve karakter uzunluğunda kayıt yapılmalıdır.
- NOT NULL olan kolonlar boş bırakılmayacaklarından dolayı mutlaka değer gönderilmelidir.
```SQL
INSERT Personeller(Unvan,UnvanEki) VALUES ('a','b')
```

- Otomatik artan(identity) kolonlara değer gönderilmez.
- Tablodaki seçilen yahut bütün kolonlara değer gönderileceği belirtilip, gönderilmezse hata verecektir
```SQL
INSERT Personeller(Adi,SoyAdi) VALUES ('MUSA')
INSERT Personeller VALUES ('MUSA','UYUMAZ')
```

## [Pratik Kullanım]
```SQL
INSERT Musteriler(MusteriAdi,Adres) VALUES('HİLMİ','ÇORUM')
INSERT Musteriler(MusteriAdi,Adres) VALUES('NECATİ','ÇANKIRI')
INSERT Musteriler(MusteriAdi,Adres) VALUES('RIFKI','YOZGAT')

INSERT Musteriler(MusteriAdi,Adres) VALUES('HİLMİ','ÇORUM'),
										                      ('HİLMİ','ÇORUM'),
										                      ('HİLMİ','ÇORUM')
```

***
# 28-) T-SQL DML Insert Komutu 2
## [INSERT Komutu İle SELECT Sorgusu Sonucu Gelen Verileri Farklı Tabloya Kaydetme]
```SQL
INSERT ORNEKPERSONELLER SELECT Adi,SoyAdi FROM Personeller
```
- Burada dikkat etmeniz gereken nokta; SELECT sorgusunda dönen kolon sayısı ile INSERT işlemi yapılacak tablonun kolon sayısı birbirne eşit olması gerekmektedir. Aynı zamanda kolon özelliklerine de dikkat edilmelidir.

## [SELECT Sorgusu Sonucu Gelen Verileri Farklı Bir Tablo Oluşturarak Kaydetme]
```SQL
SELECT Adi, SoyAdi, Ulke INTO ORNEKPERSONELLER2 FROM Personeller
```
- Bu yöntemle primary key ve foreign keyler oluşturulamazlar.

***
# 29-) T-SQL DML Update Komutu
## UPDATE
- UPDATE [TABLO ADI] SET [KOLON ADI] = DEĞER
```SQL
UPDATE ORNEKPERSONELLER SET ADI = 'MEHMET'
```

## [UPDATE Sorgusuna WHERE Şartı Yazmak]
```SQL
UPDATE ORNEKPERSONELLER SET ADI = 'MEHMET' WHERE ADI= 'NANCY'
UPDATE ORNEKPERSONELLER SET ADI = 'AYŞE' WHERE SOYADI = 'Davolio'
```

## [UPDATE Sorgusunda Join Yapılarını Kullanarak Birden Fazla Tabloda Güncelleme Yapmak]
```SQL
UPDATE Urunler SET UrunAdi = K.KategoriAdi FROM Urunler U INNER JOIN Kategoriler K ON U.KategoriID = K.KategoriID
```

## [UPDATE Sorgusunda Subquery İle Güncelleme Yapmak]
```SQL
UPDATE Urunler SET UrunAdi = (SELECT UrunAdi FROM Personeller WHERE PersonelID = 3)
```

## [UPDATE Sorgusunda TOP Keywordü İle Güncelleme Yapmak]
```SQL
UPDATE TOP(30) Urunler SET UrunAdi = 'x'
```

***
# 30-) T-SQL DML Delete Komutu
## DELETE
- DELETE FROM [TABLO ADI]
```SQL
DELETE FROM Urunler
```

- [DELETE Sorgusuna WHERE Şartı Yazmak]
```SQL
DELETE FROM Urunler WHERE KategoriID < 3
```

## [Dikkat Edilmesi Gerekenler!!!]
- DELETE sorgusuyla tablo içerisindeki verileri silmeniz identity kolonunu sıfırlamayacaktır. Silme işleminden sonra ilk eklenen veride kalınığı yerden id değeri verilecektir.
- Hem identity değerini sıfırlamak hem de verileri temizlemek istiyorsak eğer TRUNCATE komutunu kullanırız

***
# 31-) T-SQL Union Komutu 
## UNION | UNION ALL

## UNION
- Birden fazla SELECT sorgusu sonucunu tek seferde alt alta göstermemizi sağlar.

```SQL
SELECT Adi,SoyAdi FROM Personeller
SELECT MusteriAdi,MusteriUnvani FROM Musteriler

SELECT Adi,SoyAdi FROM Personeller
UNION
SELECT MusteriAdi,MusteriUnvani FROM Musteriler
```

- 2'den Fazla
```SQL
SELECT Adi,SoyAdi FROM Personeller
UNION
SELECT MusteriAdi,MusteriUnvani FROM Musteriler
UNION
SELECT SevkAdi,SevkAdresi FROM Satislar
```

- JOIN'ler yan yana, UNION alt alta tabloları birleştirir. JOIN'lerde belirli(ilişkisel) bir kolon üzerinden birleştirme yapılırken, UNION'da böyle bir durum yoktur.

- Dikkat etmemiz gereken koşullar;
	* UNION sorgusunun sonucunda oluşan tablonun kolon isimleri, üstteki sorgunun kolon isimlerinden oluşturulur.
	* Üstteki sorgudan kaç kolon çekilmişse alttaki sorgudan da o kadar çekilmek zorundadır.
	* Üsteki sorgudan çekilen kolonların tipleriyle, alttaki sorgudan çekilen kolonların tipleri uyumlu olmalıdır.
	* UNION tekrarlı kayıtları getirmez.

- UNION'da kullanılan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta, yukarıdaki kurallar çerçevesinde aşağıyada yukarıyada aynı sayıda kolonların eklenmesi gerekmektedir.
```SQL
SELECT Adi,SoyAdi, 'Personel' FROM Personeller
UNION
SELECT MusteriAdi,MusteriUnvani, 'Müşteri' FROM Musteriler
```

***
# 32-) T-SQL Union All Komutu
## UNION ALL
- UNION tekrarlı kayıtları getirmez. Tekrarlı kayıtları getirmek için UNION ALL komutu kullanılmalıdır.
```SQL
SELECT Adi,SoyAdi FROM Personeller 
UNION ALL
SELECT Adi,SoyAdi FROM Personeller 
```

***
# 33-) T-SQL With Rollup Komutu
## WITH ROLLUP
- GROUP BY ile gruplanmış veri kümesinde ara toplam alınmasını sağlar.

```SQL
SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH ROLLUP

SELECT KategoriID,UrunID,SUM(TedarikciID) FROM Urunler GROUP BY KategoriID,UrunID WITH ROLLUP
```

- [Having Şartıyla Beraber WITH ROLLUP]
```SQL
SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH ROLLUP HAVING SUM(Miktar) > 100
```

***
# 34-) T-SQL With Cube Komutu
## WITH CUBE
- GROUP BY ile gruplanmış veri kümesinde teker teker toplam alınmasını sağlar.

```SQL
SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH CUBE

SELECT KategoriID,UrunID,SUM(TedarikciID) FROM Urunler GROUP BY KategoriID,UrunID WITH CUBE
```

- [Having Şartıyla Beraber WITH ROLLUP]
```SQL
SELECT SatisID,UrunID,SUM(Miktar) FROM [Satis Detaylari]
GROUP BY SatisID,UrunID WITH CUBE HAVING SUM(Miktar) > 100
```

***
# 35-) T-SQL Case When Then Else End Kalıbı
## CASE - WHEN - ELSE - END
- Sorgularda şart kalıbı olarak kullanırız.

- Personellerimizin isim ve soyisimlerinin yanında; UnvanEki 'Mr.' ise 'Erkek', 'Ms.' ise 'Kadın' yazsın.
```SQL
SELECT Adi,SoyAdi,UnvanEki FROM Personeller

SELECT Adi,SoyAdi,
CASE 
WHEN UnvanEki = 'Mrs.' OR UnvanEki = 'Ms.' THEN 'KADIN'
WHEN UnvanEki = 'Mr.' THEN 'ERKEK'
ELSE UnvanEki
END
FROM Personeller
```

- Eğer ürünün birim fiyatı 0 - 50 arası ise 'Çin Malı' 50 - 100 arası ise 'Ucuz', 100 - 200 arası ise 'Normal' ve 200'den fazla ise 'Pahalı' yazsın.
```SQL
SELECT UrunID,BirimFiyati FROM Urunler

SELECT UrunID,
CASE
WHEN BirimFiyati BETWEEN 0 AND 50 THEN 'Çin Malı'
WHEN BirimFiyati BETWEEN 50 AND 100 THEN 'Ucuz'
WHEN BirimFiyati BETWEEN 100 AND 200 THEN 'Normal'
WHEN BirimFiyati> 200 THEN 'Pahalı'
ELSE 'BELİRSİZ'
END
FROM Urunler
```

***
# 36-) T-SQL With Ties Komutu
## WITH TIES Komutu
- TOP komutunu kullanırken kullanıdığımız bir komuttur. 

- Bağıl değerlendirme yapmamızı sağlar. Yani bir yarışma düşünün ilk 3'e ödül vereceksiniz ama 3.y'le aynı puan alan diğer yarışmacıları da istiyorsanız eğer bu komutu kullanabilirsiniz.

- WITH TIES hangi kolona uygun bir şekilde işlem yapacaktır. Hangisinde devamlılık söz konusuysa o kolonu belirtmemiz gerekmektedir. Bunu da ORDER BY ile yaparız.

```SQL
SELECT * FROM [Satis Detaylari]

SELECT TOP 6 WITH TIES * FROM [Satis Detaylari] ORDER BY SatisID
```

***
# 37-) T-SQL With Yapısı
## WITH Komutu
- Herhangi bir sorguda parametrik özellik kazandırmamızı sağlayan bir komuttur.

- İleride göreceğimiz Stored Procedure, View gibi yapıların kaydedilebilir olması iken WITH Komutu kaydedilemeyen keza biz direkt fiziksel olarak kaydetmediğimiz sürece çalıştırdığımızda herhangi bir veritabanının yapısına kaydedilmeyen yapıdadır. Yani anlık olarak kullanıp işimizi gören bir komuttur.

- Kompleks sorguların yazılma sürecinde daha da  komplekse gidiyorsa eğer WITH komutuyla biz mevcut sorguyu parametrik hale getirip daha okunabilir ve daha da işimizi kolaylaştırabilir bir yapı kazandırmayı hedefliyoruz.

```SQL
WITH PERSONELSATIS(ID,ADI,SOYADI,SATISID)
AS
(
SELECT P.PersonelID,P.Adi,P.SoyAdi,S.SatisID FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID
)
SELECT * FROM PERSONELSATIS PS INNER JOIN [Satis Detaylari] SD ON SD.SatisID = PS.SATISID
```

***
# 38-) T-SQL Subquery
## SUBQUERY (İç İçe Sorgular)
- Herhangi bir sorgunun çıktısı başka bir sorgunun girdisi olabilir.
- Herhangi bir sorgudan elde ettiğimiz veriyi biz başka bir sorguda kullanabilmekteyiz. 

```SQL
SELECT * FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID WHERE Adi = 'NANCY'

SELECT SatisID,SatisTarihi FROM Satislar WHERE PersonelID = (SELECT PersonelID FROM Personeller WHERE Adi = 'NANCY')

SELECT Adi FROM Personeller WHERE Adi = (SELECT Adi FROM Personeller WHERE UnvanEki = 'Dr.')
```

***
# 39-) T-SQL Bulk Insert
## BULK INSERT 
- Önceden fiziksel bir tablonun oluşturulmuş olması gerekmektedir.
- Harici kaynaktaki kolonlarımızın tipleri ve kaç tane olduğu önemlidir.

```SQL
BULK INSERT Kisiler
FROM 'D:\Kisiler.txt'
WITH
(
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n'
)
```

***
# 40-) T-SQL Truncate Table Komutu
## TRUNCATE Komutu
- Veritabanındaki herhangi bir tablomuzun tüm verilerini silmemizi sağlayan ve bu işlemi yaparkende IDENTITY kolonunu sıfırlamamızı sağlayan bir komuttur.
- DELETE ile de tablodaki tüm verileri silebiliyoruz ama TRUNCATE'ten tek farkı ilgili IDENTITY kolonunu sıfırlamamakta sadece verileri silip IDENTITY kolonunu kaldığı yerde bırakmaktadır. Haliyle herhangi bir veri eklendiği vakit IDENTITY nerede kaldıysa oradan devam etmektedir.

```SQL
SELECT * INTO PERSONELLERX FROM PERSONELLER

DELETE FROM PERSONELLERX
TRUNCATE TABLE PERSONELLERX
```

***
# 41-) T-SQL @@Identity Komutu
## @@IDENTITY Komutu
- İlgili veritabanı içerisinde yapılan en son INSERT işleminin identity değerini bizlere getiren bir komuttur.
- INSERT işleminden sonra direkt @@IDENTITY komutunu çağırmaktayız.

```SQL
INSERT Kategoriler(KategoriAdi,Tanimi) VALUES('X','X Kategorisi')

SELECT @@IDENTITY

INSERT PERSONELLERX(Adi,SoyAdi) VALUES('Ela','Elif')
SELECT @@IDENTITY
```

***
# 42-) T-SQL @@Rowcount Komutu
## @@ROWCOUNT Komutu
- Biz yapmış olduğumuz işlem neticesinde kaç tane elemanın etkilendiğini bulabiliyoruz.

```SQL
DELETE FROM PERSONELLERX WHERE SoyAdi = 'Gençay'
SELECT @@ROWCOUNT

SELECT * FROM Personeller 
SELECT @@ROWCOUNT

INSERT PERSONELLERX(Adi,SoyAdi) VALUES('Gençay','Yıldız'),
									  ('Ahmet','Uslu'),
									  ('Aslı','Güngör')
SELECT @@ROWCOUNT
```

***
# 43-) T-SQL DBCC Checkident Fonksiyonu İle Identity Kolonuna Müdahale Etme
## IDENTITY Kolonuna Müdahale Etme
- Bir tabloda bulunan identity değerinin nereden devam edeceğini ayarlayabiliyoruz.
- Burada ilgili tabloda bulundan identity değerlerinden büyük bir değer girmeliyiz.

```SQL
DBCC Checkident(PERSONELLERX,reseed,27)
```

***
# 44-) T-SQL Null Değer Kontrolü
## NULL Kontrol Mekanizmaları
- NULL dediğimiz değerler değersiz anlamına gelen değerlerdir. Yani bir değerin olmadığını ifade ederler.

## CASE-WHEN-THEN-ELSE-END Kalıbı İle NULL Kontrolü
```SQL
SELECT MusteriAdi,Bolge FROM Musteriler

SELECT MusteriAdi,
CASE 
	WHEN BOLGE IS NULL THEN 'BÖLGE BİLİNMİYOR'
	ELSE BOLGE
END
FROM Musteriler
```

***
# 45-) T-SQL Coalesce Fonksiyonu İle Null Değer Kontrolü
## COALESCE Fonksiyonu İle NULL Kontrolü
- Verdiğimiz kolondaki NULL değerlere verdiğimiz ikinci parametredeki değere göre değiştirecektir. 

```SQL
SELECT MusteriAdi, COALESCE(Bolge,'BÖLGE BİLİNMİYOR') FROM Musteriler
```

***
# 46-) T-SQL IsNull Fonksiyonu İle Null Değer Kontrolü
## ISNULL Fonksiyonu İle NULL Kontrolü
- COALESCE Fonksiyonunda olduğu gibi eğer ki null olmayan değerler varsa onları aynı şekil bırakıyor. NULL değerlerin yerine de parametrede belirtilen değeri veriyor.

```SQL
SELECT MusteriAdi,ISNULL(Bolge,'Bölge Bilinmiyor') FROM Musteriler
```

***
# 47-) T-SQL NullIf Fonksiyonu İle Null Değer Kontrolü
## NULLIF Fonksiyonu İle NULL Kontrolü 
- Fonksiyona verilen kolon,Birinci parametredeki değer eğer ikinci parametrede verilen değere eşit ise o kolonu NULL olarak getirir.

- Eğer ki parametredeki değerler eşit değilse bize birinci parametredeki değeri döndürür.

- NULL değerler raporlamada yani istatistiksel matematiksel işlemlerde sonucu saptırabilmekte ve beklediğimiz sonuçları alamamaktayız. Nihayetinde NULL değerleri ya hükmedebilmeli değiştirmeli ya da NULL değerleri hesaplamadan çıkarmalıyız.

- NULL değerleri serbest bırakmayın kendi amacınız doğrultusunda ister değer atayacaksınız ister farklı bir ayraç atayacaksınız ama NULL olarak bırakmayacaksınız. Raporlamada her zaman NULL değerlere dikkat etmek gerekir.
```SQL
SELECT NULLIF(2,2)

SELECT HedefStokDuzeyi FROM Urunler

SELECT AVG(HedefStokDuzeyi) FROM Urunler
```

- Hedef stok düzeyi 0 olmayan ürünlerin ortalaması nedir?
```SQL
SELECT AVG(HedefStokDuzeyi) FROM Urunler WHERE HedefStokDuzeyi <> 0
 
SELECT AVG(NULLIF(HedefStokDuzeyi,0)) FROM Urunler
```

# 48-) T-SQL İle Veritabanındaki Tabloları Listeleme
## T-SQL İle Veritabanındaki Tabloları Listeleme
- Çalıştığınız veritabanının içindeki tablolara erişmek istiyorsanız aşağıdaki sorguları kullanabilirsiniz.

```SQL
SELECT * FROM SYS.TABLES
```
- ya da
```SQL
SELECT * FROM SYSOBJECTS WHERE XTYPE='U'
```

***
# 49-) T-SQL Bir Tablonun Primary Key Olup Olmadığını Kontrol Etme
## Bir Tablonun Primary Key Olup Olmadığını Kontrol Etme
- Eğer ki 1 değerini döndürüyorsa ilgili tablo içinde primary key var olduğunu göstermektedir. Yok eğer 0 gösteriyorsa demek ki ilgili tablo içinde herhangi bir primary key yok demektir.

```SQL
SELECT OBJECTPROPERTY(OBJECT_ID('PERSONELLER'),'TABLEHASPRIMARYKEY')
```

***
# 50-) T-SQL DDL Giriş
## DDL (Data Definition Language)
- T-SQL'de veritabanı nesneleri yaratmamızı sağlayan ve bu nesneler üzerinde değişiklikler yapmamızı ve silmemizi sağlayan yapılar bu başlık altında simgelenmektedir.

## CREATE ALTER DROP

***
# 51-) T-SQL DDL Create Komutu
## CREATE
- Veritabanı nesnesi yaratmamızı sağlar (Database, Table, View, Stored Procedure, Trigger, vs.)

- Prototipi
- CREATE [NESNE] [NESNENİN ADI]

***
# 52-) T-SQL DDL Create Komutu İle Database Oluşturma
## CREATE İle Database Oluşturma
```SQL
CREATE DATABASE OrnekVeritabani
```
- Bu şekilde bir kullanım varsayılan ayarlarda veritabanı oluşturacaktır.

```SQL
CREATE DATABASE OrnekVeritabani
ON 
(
	NAME = 'GG',
	FILENAME = 'D:\GG.mdf',
	SIZE = 5,
	FILEGROWTH = 3
)
```
- NAME : Oluşturulacak veritabanının fiziksel ismini belirtiyoruz.
- FILENAME : Oluşturulacak veritabanının dosyasının fiziksel dizinini belirtiyoruz.
- SIZE : Veritabanının başlangıç boyutunu MB cinsinden ayarlıyoruz.
- FILEGROWTH : Veritabanın boyutu, başlangıç boyutunu geçtiği durumda boyutun ne kadar artması gerektiğini MB cinsinden belirtiyoruz.

***
# 53-) T-SQL DDL Create Komutu İle Database Log Dosyası Oluşturma
## CREATE İle Log Dosyasıyla Birlikte Database Oluşturma
```SQL
CREATE DATABASE OrnekVeritabani
ON 
(
	NAME = 'GG',
	FILENAME = 'D:\GG.mdf',
	SIZE = 5,
	FILEGROWTH = 3
)
LOG 
ON 
(
	NAME = 'GG_LOG',
	FILENAME = 'D:\GG.ldf',
	SIZE = 5,
	FILEGROWTH = 3
)
```

***
# 54-) T-SQL DDL Create Komutu İle Table Oluşturma
## CREATE İle Tablo Oluşturma
```SQL
USE ORNEKVERITABANI
CREATE TABLE ORNEKTABLO
(
	KOLON1 INT,
	KOLON2 NVARCHAR(MAX),
	KOLON3 MONEY
)
```

- Eğer kolon adlarında boşluk varsa köşeli parantez([]) ile belirtilmelidir.
```SQL
CREATE TABLE ORNEKTABLO2
(
	[KOLON 1] INT,
	[KOLON 2] NVARCHAR(MAX),
	[KOLON 3] MONEY
)
```

# 55-) T-SQL DDL Create Komutu İle Tablonun Kolonuna Primary Key ve Identity Özellikleri Verme
## Kolona Primary Key ve Identity Özelliği Kazandırmak
```SQL
CREATE TABLE ORNEKTABLO3
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	[KOLON 2] NVARCHAR(MAX),
	[KOLON 3] MONEY
)
```

***
# 56-) T-SQL DDL Alter Komutu
## ALTER
- CREATE ile yaratılan veritabanı nesnelerinde değişiklik yahut güncelleme işlemi yapmamızı sağlar.

- Prototip
- ALTER [NESNE] [NESNENİN ADI] 
- (Yapıya Göre İşlemler)

***
# 57-) T-SQL DDL Alter Komutu İle Database Güncelleme
## ALTER İle Database Güncelleme
```SQL
ALTER DATABASE ORNEKVERITABANI
MODIFY FILE 
(
	NAME = 'ORNEKVERITABANI',
	SIZE = 20
)
```

***
# 58-) T-SQL DDL Alter Komutu İle Tabloya Kolon Ekleme
## ALTER İle Olan Bir Tabloya Kolon Ekleme
```SQL
ALTER TABLE ORNEKTABLO
ADD KOLON4 NVARCHAR(MAX)
```

***
# 59-) T-SQL DDL Alter Komutu İle Tablodaki Kolonu Güncelleme
## ALTER İle Tablodaki Kolonu Güncelleme
```SQL
ALTER TABLE ORNEKTABLO
ALTER COLUMN KOLON4 INT
```

***
# 60-) T-SQL DDL Alter Komutu İle Tablodaki Kolonu Silme
## ALTER İle Tablodaki Kolonu Silme
```SQL
ALTER TABLE ORNEKTABLO
DROP COLUMN KOLON4
```

***
# 61-) T-SQL DDL Alter Komutu İle Tabloya Constraint Ekleme
## ALTER İle Tabloya Constraint Ekleme
```SQL
ALTER TABLE ORNEKTABLO 
ADD CONSTRAINT ORNEKCONSTRAINT DEFAULT 'BOŞ' FOR KOLON2
```

***
# 62-) T-SQL DDL Alter Komutu İle Tablodaki Constrainti Silme
## ALTER İle Tabloya Constraint Silme
```SQL
ALTER TABLE ORNEKTABLO 
DROP CONSTRAINT ORNEKCONSTRAINT
```

***
# 63-) T-SQL Sp_Rename Komutu İle Tablo Adını Değiştirme
## SP_RENAME İle Tablo Adı Güncelleme
```SQL
SP_RENAME 'ORNEKTABLO', 'ORNEKTABLOYENI'
```

***
# 64-) T-SQL Sp_Rename Komutu İle Kolon İsmini Değiştirme
## SP_RENAME İle Kolon Güncelleme
```SQL
SP_RENAME 'ORNEKTABLOYENI.KOLON1' ,'KOLON1453','COLUMN'
```

***
# 65-) T-SQL DDL Drop Komutu
## DROP
-- CREATE ile oluşturulan veri tabanı nesnelerini silmemize yarar.

## Prototip
-- DROP [NESNE] [NESNE ADI]

```SQL
DROP TABLE ORNEKTABLOYENI
DROP DATABASE ORNEKVERITABANI
```

***
# 66-) T-SQL Constraintler Giriş
## CONSTRAINTLER (KISITLAYICILAR)
- Constraintler sayesinde tablolar üzerinde istediğimiz şartlar ve durumlara göre kısıtlamalar yapabiliyoruz.

- Bir tabloya özel şart durum ya da herhangi bir varsayılan değeri Constraint'imizi oluşturduğumuz zaman bu constraint ilgili tabloya fiziksel olarak oluşturulacaktır.

- CONSTRAINT Türleri;
	* 1. DEFAULT CONSTRAINT
	* 2. CHECK CONSTRAINT
	* 3. PRIMARY KEY CONSTRAINT
	* 4. UNIQUE CONSTRAINT
	* 5. FOREIGN KEY CONSTRAINT

# 67-) T-SQL Default Constraint
## DEFAULT CONSTRAINT
- DEFAULT CONSTRAINT sayesinde kolona bir değer girilmediği taktirde varsayılan olarak ne girilmesi gerektiğini belirtebiliyoruz.
- Herhangi bir tablo içerisindeki herhangi bir kolonun boş geçilmesi durumunda ilgili kolona girilecek olan varsayılan değerin ne olması gerektiğini DEFAULT CONSTRAINT sayesinde belirtebiliyoruz.

## Genel Yapısı;
- ADD CONSTRAINT [CONSTRAINT ADI] DEFAULT 'VARSAYILAN DEĞER' FOR [KOLON ADI]

```SQL
CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	KOLON1 NVARCHAR(MAX),
	KOLON2 INT
)
ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON1CONSTRAINT DEFAULT 'BOŞ' FOR KOLON1

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON2CONSTRAINT DEFAULT -1 FOR KOLON2

INSERT ORNEKTABLO(KOLON2) VALUES(0)
INSERT ORNEKTABLO(KOLON1) VALUES('ÖRNEK BİR DEĞER')

SELECT * FROM ORNEKTABLO
```

***
# 68-) T-SQL Check Constraint
## CHECK CONSTRAINT
- Bir kolona girilecek olan verinin belirli bir şarta uymasını zorunlu tutar.

- Herhangi bir kolona girilecek olan verinin önceden belirttiğim bir şarta göre CHECK/kontrol edilip CHECK sonucunda olumlu ya da olumsuz olma durumuna göre ilgili kolona ilgili verinin kaydedilmesini inceleyen constraint'tir.

- Genel Yapısı;
- ADD CONSTRAINT [CONSTRAINT ADI] CHECK (ŞART)

```SQL
ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON2KONTROL CHECK ((KOLON2 * 5) % 2 = 0)
```

***
# 69-) T-SQL Check Constraint With Nocheck Komutu
## DİKKAT!!!
- CHECK constraint oluşturulmadan önce ilgili tabloda şarta aykırı değerler varsa eğer constraint oluşturulmayacaktır! ! !

- Ancak önceki kayıtları görmezden gelip yinede CHECK constrainti uygulamak istiyorsak WITH NOCHECK komutu kullanılmalıdır.

## WITH NOCHECK Komutu
- Şu ana kadar kayıtları görmezden gelip, CHECK constrainti uygulattırır.
```SQL
ALTER TABLE ORNEKTABLO
WITH NOCHECK ADD CONSTRAINT KOLON2KONTROL CHECK((KOLON2 * 5) % 2 = 0)
```

***
# 70-) T-SQL Primary Key Constraint
## PRIMARY KEY CONSTRAINT
- PRIMARY KEY Constraint ile; o kolona eklenen PRIMARY KEY ile, başka tablolarda FOREIGN KEY oluşturarak ilişki kurmamız mümkün olur. Bunun yanında o kolonun taşıdığı verinin tekil olacağı da garanti edilmiş olur. PRIMARY KEY Constraint ile ayrıca CLUSTERED INDEX oluşturulmuş da olur.

- Genel Yapısı
- ADD CONSTRAINT [CONSTRAINT ADI] PRIMARY KEY [KOLON ADI]

- DİKKAT !!!
- PRIMARY KEY Constraint kullanılan kolon PRIMARY KEY özelliğine sahip olmamalıdır.

- Kullanacağımız tablonun içerisinde ise başka PRIMARY KEY kolonu olmamalıdır. Çünkü bir tabloda sadece bir tane PRIMARY KEY kolon bulunabilir.

```SQL
ALTER TABLE ORNEKTABLO
ADD CONSTRAINT PRIMARYID PRIMARY KEY (ID)
```

***
# 71-) T-SQL Unique Constraint
## UNIQUE CONSTRAINT 
- UNIQUE CONSTRAINT'in tek amacı, belirttiğimiz kolondaki değerlerin tekil olmasını sağlamaktadır.

- Birden fazla tekrarlı kaydın girmesini engellemektedir.

- Genel Yapısı;
- ADD CONSTRAINT [CONSTRAINT ADI] UNIQUE (KOLON ADI)

```SQL
ALTER TABLE ORNEKTABLO
ADD CONSTRAINT ORNEKTABLOUNIQUE UNIQUE (KOLON2)
```

- KOLON2 kolonuna UNIQUE Constraint verilerek tekil hale getirilmiştir. Bundan sonra iki tane aynı veriden kayıt yapılamamaktadır.

***
# 72-) T-SQL Foreign Key Constraint
## FOREIGN KEY CONSTRAINT 
- Tabloların kolonları arasında ilişki kurmamızı sağlar. Bu ilişki neticesinde FOREIGN KEY olan kolondaki karşılığının boşa düşmemesi için PRIMARY KEY kolonu olan tablodan veri silinmesini güncellenmesini engeller

- Genel Yapısı;
- ADD CONSTRAINT [CONSTRAINT ADI] FOREIGN KEY (KOLON ADI) REFERENCES [2.TABLO ADI](2. TABLODAKİ KOLON ADI)

```SQL
CREATE TABLE OGRENCILER
(
	OGRENCIID INT PRIMARY KEY IDENTITY(1,1),
	DERSID INT,
	ADI NVARCHAR(MAX),
	SOYADI NVARCHAR(MAX)
)

CREATE TABLE DERSLER
(
	DERSID INT PRIMARY KEY IDENTITY(1,1),
	DERSADI NVARCHAR(MAX)
)

ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
```

- Şu durumda DELETE UPDATE işlemlerinden ilişkili kolondaki veriler etkilenmez.

- Davranışı değiştirmek için aşağıdaki komutlar kullanılır.
	* CASCADE
	* SET NULL
	* SET DEFAULT

***
# 73-) T-SQL Foreign Key Constraint Cascade Komutu
## CASCADE
- Ana tablodaki kayıt silindiğinde ya da güncellendiğinde ilişkili kolondaki karşılığıda otomatik olarak silinir ya da güncellenir.
```SQL
ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE CASCADE
ON UPDATE CASCADE
```

***
# 74-) T-SQL Foreign Key Constraint Set Null Komutu
## SET NULL
- Ana tablodaki kayıt silindiğinde ya da güncellendiğinde ilişkili kolondaki karşılığıda NULL değer basılır.
```SQL
ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE SET NULL
ON UPDATE SET NULL
```

***
# 75-) T-SQL Foreign Key Constraint Set Default Komutu
## SET DEFAULT
- Ana tablodaki kayıt silindiğinde ya da güncellendiğinde ilişkili kolondaki karşılığına o kolonun default değeri basılır. Bu default değer dediğimiz default tipte bir constraint'tir. Bunu kendimiz oluşturabiliriz.

```SQL
ALTER TABLE OGRENCILER
ADD CONSTRAINT DEFAULTOGRENCILER DEFAULT -1 FOR DERSID

ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE SET DEFAULT
ON UPDATE SET DEFAULT
```

- Bu ayarlar verilmediği taktirde NO ACTION özelliği geçerlidir.

***
# 76-) T-SQL Değişken Tanımlama
## DEĞİŞKENLER
- DECLARE Keywordü ile değişken tanımlanır.

- DECLARE Komutu TSQL'de değişken oluşturmamızı sağlayan bir komuttur.

- Prototip;
- DECLARE @DEGISKENADI DEGISKENTIP

```SQL
DECLARE @X INT

DECLARE @Y NVARCHAR

DECLARE @Z MONEY

DECLARE @X INT, @Z NVARCHAR, @Y BIT

DECLARE @YAS INT = 3
```

***
# 77-) T-SQL Tanımlanmış Değişkene Değer Atama
## Tanımlanmış Değişkenlere Değer Atama
- Önceden tanımlanmış ya da oluşturulmuş bir değişkenin değerine müdahale etmek istiyorsak SET komutunu kullanmalıyız.

- SET komutu C# programlama dilinde bir property'nin dışarıdan verilen değeri yakaladığı bloktu. TSQL'de de aynı mantık değişkene dışarıdan verilen değer varsa SET ile yakalayacağız.

```SQL
DECLARE @YAS INT = 3

DECLARE @X INT

-- SET

SET @X = 125

DECLARE @TARIH DATETIME = GETDATE()

SET @TARIH = GETDATE()
```

***
# 78-) T-SQL Değişkenin Değerini Elde Etme
## Değişken Değeri Okuma
- Assign operatörünün(=) solundaysa eğer değişkenin referansı verilen değeri ata anlamına gelmektedir. Değişkenin referansı Yani Assign operatörünün(=) solundaysa o bize değişkenin değerini getirmez ama herhangi bir değişkenin direkt ismini çağırıyorsak direkt o değişkenin değerini getirir

- SELECT komutu bir tablo oluşturur.

```SQL
DECLARE @X INT

SET @X = 3 --X Değişkenine 3 değerini atadık

SELECT @X
PRINT @X
```

***
# 79-) T-SQL Sorgu Sonucu Gelen Verileri Değişkenle Elde Etme
## Sorgu Sonucu Gelen Verileri Değişkenle Elde Etme

```SQL
DECLARE @ADI NVARCHAR(MAX), @SOYADI NVARCHAR(MAX)

SELECT @ADI=Adi, @SOYADI=SoyAdi FROM Personeller WHERE PersonelID = 1

SELECT @ADI,@SOYADI
```
1. Sorgu sonucu gelen satır sayısı bir adet olmalıdır.
2. Kolonlardaki verilerin tipleri ne ise o verileri temsil edecek değişkenlerin tipleri de benzer olmalıdır.

***
# 80-) T-SQL Batch Kavramı - Go Komutu
## BATCH Kavramı - GO
- GO komutu, eğer ki bir pencerede birden fazla işlem yapıyorsak ve bu işlemler birbirlerinden bağımsız ise bu yapıların birbirlerinden bağımsız olduğunu derleyiciyi de göstermek istiyorsak bu komutu kullanıyoruz.

- Birbirlerinden bağımsız olan komutları bağımsızlığını derleyiciye GO komutu aracılığıyla göstermiş oluyoruz.

- GO işlemi biten komutları birbirleriden ayırmaktadır.

```SQL
CREATE DATABASE ORNEKDATABASE
GO
USE ORNEKDATABASE
GO
CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX)
)
```

***
# 81-) T-SQL If - Else Yapısı
## IF Yapısı
- IF dediğimiz yapıda koşulumuzun sonuç olarak TRUE ya da FALSE yani TSQL'de BIT olarak dönmesi gerekmektedir.

- IF ELSE yapısı içerisinde birden fazla komut kullanacaksak eğer scope anlamına gelen BEGIN END yapısı dediğimiz yapıları kullanırız. 

- `=` : Eşitse C# ==
- `<>` : Eşit Değilse C# !=
- `>`: Büyükse
- `<`: Küçükse

## Tek Satırlık Çalışma
```SQL
DECLARE @ISIM NVARCHAR(MAX)
SET @ISIM = 'MUSA'

IF @ISIM = 'MUSA'
	PRINT 'EVET'
ELSE
	PRINT 'HAYIR'
```

## BEGIN END Yapısı(Scope)
```SQL
DECLARE @SAYI1 INT = 3
DECLARE @SAYI2 INT = 5

IF @SAYI1 < @SAYI2
	BEGIN 
		PRINT 'EVET SAYI1 SAYI2''DEN KÜÇÜKTÜR.'
		SELECT @SAYI1 [SAYI 1],@SAYI2 [SAYI 2]
	END
ELSE
	BEGIN
		PRINT 'HAYIR SAYI1 SAYI2''DEN KÜÇÜK DEĞİLDİR.'
		SELECT @SAYI1 [SAYI 1],@SAYI2 [SAYI 2]
	END
```

- Örnek 1
- Müşteriler tablosunda Amerikalı (USA) müşteri var mı?
```SQL
SELECT * FROM Musteriler WHERE Ulke = 'USA'

IF @@ROWCOUNT > 0
	PRINT 'EVET VAR'
ELSE 
	PRINT 'HAYIR YOK'
```

- @@ROWCOUNT Yapılan işlemden etkilenen satır sayısını getirir.

- Örnek 2
- Adı 'MUSA' soyadı 'UYUMAZ' olan personel var mı? Varsa Evet desin Yoksa kaydetsin.
```SQL
DECLARE @ADI NVARCHAR(MAX) = 'MUSA', @SOYADI NVARCHAR(MAX) = 'UYUMAZ'

SELECT * FROM Personeller WHERE Adi = @ADI AND SoyAdi = @SOYADI

IF @@ROWCOUNT > 0
	PRINT 'EVET VAR.'
ELSE
	BEGIN
		PRINT 'HAYIR YOK...'
		INSERT Personeller([SoyAdi], [Adi]) VALUES (@SOYADI,@ADI)
	END
	
```

***
# 82-) T-SQL If- Else If - Else Yapısı
## IF - ELSE IF - ELSE Yapısı
```SQL
DECLARE @ADI NVARCHAR(MAX) = 'MUSA'
DECLARE @YAS INT = 24

IF @ADI = 'MAHMUT'
	PRINT 'EVET MAHMUT'
ELSE IF @YAS > 23
	PRINT 'YAŞI 23''TEN BÜYÜK'
ELSE IF 3 > 5
	BEGIN
		PRINT ''
	END
ELSE IF 1 = 1
	PRINT 'EŞİT'
ELSE
	PRINT 'ABC'
```

***
# 83-) T-SQL Exists Fonksiyonu
## EXISTS Fonksiyonu
- Herhangi bir sorgu neticesinde gelen tablonun boş mu dolu mu olduğunu öğrenmemizi sağlayan bir fonksiyondur.

```SQL
IF EXISTS(SELECT * FROM Personeller)
	PRINT 'DOLU'
ELSE
	PRINT 'BOŞ'
```

***
# 84-) T-SQL While Döngüsü
## WHILE Döngüsü

- Prototip;
- WHILE ŞART KOMUT

```SQL
DECLARE @SAYAC INT = 0

WHILE @SAYAC < 100
	BEGIN
		PRINT @SAYAC
		SET @SAYAC = @SAYAC + 1
	END
```

***
# 85-) T-SQL Break Komutu
## WHILE Döngüsü BREAK Komutu
- Herhangi bir döngü içerisinde compiler/derleyici BREAK komutunu görürse bulunduğu yapıyı terk eder.

```SQL
DECLARE @SAYAC INT = 0

WHILE @SAYAC < 1000
	BEGIN
		PRINT @SAYAC
		SET @SAYAC = @SAYAC + 1
		IF @SAYAC % 5 = 0
			BREAK
	END
```

***
# 86-) T-SQL Continue Komutu
## WHILE Döngüsü CONTINUE Komutu
- CONTINUE komutu derleyici tarafından karşılaşıldığı zaman Continue komutundan sonraki komutlar işlenmemektedir.

```SQL
DECLARE @SAYAC INT = 0

WHILE @SAYAC < 100
	BEGIN 
		SET @SAYAC = @SAYAC + 1
		IF @SAYAC % 5 = 0
			CONTINUE
		PRINT @SAYAC
	END

WHILE @SAYAC < 1000
	BEGIN 
		IF @SAYAC % 5 = 0
			BEGIN
				SET @SAYAC = @SAYAC + 1
				CONTINUE
			END
		PRINT @SAYAC
		SET @SAYAC = @SAYAC + 1
	END
```

***
# 87-) T-SQL Geçici Tablolar
-- Geçici Tablolar - Temporary Tables

- Genellikle bir SQL Server üzerinde farklı lokasyonlarda birden fazla kişinin çalıştığı durumlarda ya da verilerin test amaçlı geçici bir yerlerde tutulması, işlenmesi amacıyla kullanılan yapılardır.

- Bilinen tablo yapısının aynısını sağlarlar. Tek farkları fiziksel olarak oluşmazlar. Sadece bellekte geçici olarak oluşturulurlar.

- SELECT INSERT UPDATE ve DELETE işlemleri yapabilir. İlişki kurabilir.

- Sunucu kapatıldığında ya da oturum sahibi oturumu kapattığında bellekten silinirler.

- Fiziksel olarak tablolarımızda bir değişiklik olmasını istemiyorsak verilerimizde oynama yapılmasını test edilme sürecinde herhangi bir değişikliğe mahal verilmesini istemiyorsak geçici tabloları kullanıyoruz.

- Yapılan hiçbir işlem fiziksel tabloya yansıtılmamaktadır.

***
# 88-) T-SQL Geçici Tablolar - Bir Tabloyu # İfadesi İle Belleğe Geçici Olarak Kopyalama
## #Bir Tabloyu Fiziksel Kopyalama
- Elimizdeki tablolar üzerinde test yapacaksak ve bu test ilgili tablonun fiziksel halini değiştirme ihtimali varsa ya da veri kaybı söz konusuysa ya da değişikliği mahal bıramak istemiyorsak geçici tabloları kullanacağız ya da bu tablonun bir kopyasını alacağız.

```SQL
SELECT * INTO GECICIPERSONELLER FROM Personeller
```
- Bu şekilde bir kullanımda sadece PRIMARY KEY ve FOREIGN KEY constraint'ker oluşturulmazlar. Geri kalan herşey birebir fiziksel olarak oluşturulur.

```SQL
SELECT * FROM GECICIPERSONELLER
```

***
# 89-) T-SQL Geçici Tablolar - Bir Tabloyu # İfadesi İle Belleğe Geçici Olarak Kopyalama
## #Bir Tabloyu # İfadesi İle Belleğe Geçici Kopyalama
- Geçici tablolarda yani bellek üzerine kopyalanmış tablolarda çalışabiliriz. Haliyle bu tablolar üzerinde yapmış olduğumuz tüm değişiklikler ilgili oturum/bilgisayar/SQL Server kapatıldığında bellekten silinecek ve fiziksel tabloya yansıtılmayacaktır.

```SQL
SELECT * INTO #GECICIPERSONELLER FROM Personeller

SELECT * FROM #GECICIPERSONELLER
INSERT #GECICIPERSONELLER(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
DELETE FROM #GECICIPERSONELLER WHERE PersonelID = 3
UPDATE #GECICIPERSONELLER SET Adi= 'GENÇAY', SoyAdi = 'YILDIZ' WHERE PersonelID = 5
```

- Geçici tablo üzerinde her türlü işlem yapabiliyoruz.

- `#` ile oluşturulan tablo o an SQL Server'da oturum açmış kişinin sunucu belleğinde oluşur.

- Sadece oturum açan şahıs kullanabilir.

- Eğer oturum açan şahıs SQL Server'dan disconnect olursa bu tablo bellekten silinir.


***
# 90-) T-SQL Geçici Tablolar - Bir Tabloyu ## İfadesi İle Belleğe Geçici Olarak Kopyalama
## #Bir Tabloyu ## İle Belleğe Geçici Kopyalama
```SQL
SELECT * INTO ##GECICIPERSONELLER2 FROM Personeller

SELECT * FROM ##GECICIPERSONELLER2
INSERT ##GECICIPERSONELLER2(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
DELETE FROM ##GECICIPERSONELLER2 WHERE PersonelID = 3
UPDATE ##GECICIPERSONELLER2 SET Adi= 'GENÇAY', SoyAdi = 'YILDIZ' WHERE PersonelID = 5
```

-`##` ile oluşturulan tablo o an SQL Server'da oturum açmış kişinin sunucu belleğinde oluşur.

- Bu tabloyu oturum açan şahıs ve onun SQL Server'ına dışarıdan ulaşan 3. şahıslar kullanabilir.

- Eğer oturum açan şahıs SQL Server'dan disconnect olursa bu tablo bellekten silinir.

- Diğer bütün özellikleri `#` ile oluşturulan tablo ile aynıdır

***
# 91-) T-SQL Uniqueidentifier Veri Tipi 
## UNIQUEIDENTIFIER Veri Tipi
- INT VARCHAR vs. gibi bir veri tipidir.

- Aldığı değer, rakamlar ve harflerden oluşan çok büyük bir sayıdır.

- Bundan dolayı bu kolona aynı değerin birden fazla kez gelmesi neredeyse imkansızdır.

- O yüzden tekil bir veri oluşturmak için kullanılır.

- Genellikle biz bu türü yazmış olduğun bir sistemde kullanıcı kayıt yaptığı zaman ilgili kullanıcıdan mail onayı istiyorsak UNIQUEIDENTIFIER'la bir linki kullanıcıya göndeririz. O link o kullanıcıya özel olur kullanıcı linke tıkladığında ilgili UNIQUEIDENTIFIER'a özel kullanıcıyı kıyaslarız eğer öyle bir kullanıcı varsa o kullanıcıyı aktifleştiririz.

```SQL
CREATE TABLE ORNEKTABLO2
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
	KOLON3 UNIQUEIDENTIFIER
)
```

## NEWID Fonksiyonu
- NEWID Fonksiyonu anlık olarak random yani rastgele bir şekilde UNIQUEIDENTIFIER tipinde veri üretmemizi sağlamakta 

```SQL
SELECT NEWID()
INSERT ORNEKTABLO2 VALUES('X','Y',NEWID())

SELECT * FROM ORNEKTABLO2
```

***
# 92-) T-SQL View Kullanımı, Genel Özellikleri ve Tanımlaması
## VIEW Yapısı
## === KULLANIM AMACI ===
- Genellikle karmaşık sorguların tek bir sorgu üzerinden çalıştırılabilmesidir.

- Bu amaçla raporlama işlemlerinde kullanılabilirler.

- Aynı zamanda güvenlik ihtiyacı olduğu durumlarda herhangi bir sorgunun 2. - 3. şahıslardan gizlenmesi amacıyla da kullanılırlar.

## === GENEL ÖZELLİKLERİ ===
- Herhangi bir sorgunun sonucunu tablo olarak ele alıp, ondan sorgu çekilebilmesini sağlarlar.

- INSERT, UPDATE, DELETE yapabilirler. Bu işlemleri fiziksel tabloya yansıtırlar. *** Önemli

- VIEW yapıları fiziksel olarak oluşturulan yapılardır. Yani veritabanında kaydedilmektedirler.

- VIEW yapıları normal sorgulardan daha yavaş çalışırlar.

## Dikkat ! ! !
- Database elemanlarını CREATE komutuyla oluşturuyorduk. VIEW yapısıda bir database yapısı olduğu için CREATE komutu ile oluşturacağız.
```SQL
CREATE VIEW  VW_GOTUR
AS 
SELECT P.Adi + ' ' + P.SoyAdi [ADI SOYADI], K.KategoriAdi [KATEGORİ ADI], COUNT(S.SatisID) [TOPLAM SATIŞ] FROM Personeller P 
INNER JOIN Satislar S ON P.PersonelID = S.PersonelID 
INNER JOIN [Satis Detaylari] SD ON S.SatisID = SD.SatisID 
INNER JOIN Urunler U ON U.UrunID = SD.UrunID 
INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
GROUP BY P.Adi + ' ' + P.SoyAdi , K.KategoriAdi

SELECT * FROM VW_GOTUR
SELECT * FROM VW_GOTUR WHERE [ADI SOYADI] LIKE '%ROBERT%'
```

- VIEW oluşturulurken kolonlara verilen aliaslar VIEW'den sorgu çekilirken kullanılır.

- Bir yandan da VIEW'ın kullandığı gerçek tabloların kolon isimleri, VIEW içinde alias tanımlanarak gizlenilmiş olunur.

- VIEW içinde ORDER BY kullanılmaz.

- ORDER BY VIEW içinde değil VIEW çalışırken sorgu esnasında kullanılmalıdır.

```SQL
SELECT * FROM VW_GOTUR ORDER BY [TOPLAM SATIŞ]
```

- Yok eğer illaki VIEW içinde ORDER BY kullanacağım diyorsanız VIEW içinde TOP komutunu kullanmalısınız.

- TOP komutu ORDER BY'ın kullanılmasını sağlamaktadır.

```SQL
CREATE VIEW VW_GOTUR
AS 
SELECT TOP 100 P.Adi + ' ' + P.SoyAdi [ADI SOYADI], K.KategoriAdi [KATEGORİ ADI], COUNT(S.SatisID) [TOPLAM SATIŞ] FROM Personeller P 
INNER JOIN Satislar S ON P.PersonelID = S.PersonelID 
INNER JOIN [Satis Detaylari] SD ON S.SatisID = SD.SatisID 
INNER JOIN Urunler U ON U.UrunID = SD.UrunID 
INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
GROUP BY P.Adi + ' ' + P.SoyAdi , K.KategoriAdi ORDER BY [TOPLAM SATIŞ]
```
- Bu durum çokta tavsiye edilen bir durum değildir.

- VIEW üzerinde INSERT, DELETE ve UPDATE yapılabilir. Bu işlemler fiziksel tabloya yansıtılmaktadırlar.
```SQL
CREATE VIEW ORNEKVIEWPERSONELLER
AS 
SELECT Adi,SoyAdi,Unvan FROM Personeller

INSERT ORNEKVIEWPERSONELLER VALUES('MUSA','UYUMAZ','YZLM. VRTBN. UZMN')
UPDATE ORNEKVIEWPERSONELLER SET Adi = 'SERHAT' WHERE Adi = 'MUSA'
DELETE FROM ORNEKVIEWPERSONELLER WHERE Adi = 'SERHAT'
```

***
# 93-) T-SQL View - With Encryption Komutu
## == WITH ENCRYPTION KOMUTU ==
- Eğer yazdığımız VIEW'ın kaynak kodlarını, Object Explorer penceresinde VIEWS kategorisine sağ tıklayarak Design Modda açıp görüntülenmesini istemiyorsak WITH ENCRYPTION komutu ile VIEW'ı oluşturmalıyız.
## Dikkat ! ! !
- WITH ENCRYPTION işleminden sonra VIEW'i oluşturan kişide dahil kimse komutları göremez. Geri dönüş yoktur. Ancak VIEW'i oluşturan şahsın komutların yedeğini bulundurması gerekmektedir. Ya da WITH ENCRYPTION olmaksızın VIEW yapısını yeniden ALTER'lamalıyız.
## Dikkat ! ! !
- Bir dikkat etmemiz gereken nokta da WITH ENCRYPTION ifadesini AS keywordünden önce yazmalıyız.

```SQL
CREATE VIEW ORNEKVIEWPERSONELLER
WITH ENCRYPTION 
AS 
SELECT Adi,SoyAdi,Unvan FROM Personeller
```
- Bu işlemi yaptıktan sonra Design Modu kapatılmıştır.

***
# 94-) T-SQL View - With Schemabinding Komutu
## === WITH SCHEMABINDING Komutu ===
- Eğer VIEW'in kullandığı esas fiziksel tabloların kolon isimleri bir şekilde değiştirilir, kolonları silinir ya da tablo yapısı bir şekilde değişikliğe uğrar ise VIEW'in çalışması artık mümkün olmayacaktır.

- VIEW'in kullandığı tablolar ve kolonları bu tarz işlemler yapılabilmesi ihtimaline karşı koruma altına alınabilir.

- Bu koruma WITH SCHEMABINDING ile VIEW CREATE ya da ALTER edilirken, VIEW'in kullandığı tablo SCHEMA adıyla birlikte verilmelidir. Örneğin, DBO(DATABASE OWNER) bir şema adıdır. Şemalar C#'taki NAMESPACE'ler gibi düşünülebilir.

- WITH SCHEMABINDING komutuda AS keywordünden önce yazılmalıdır.

```SQL
CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX)
)

CREATE VIEW ORNEKVIEW
WITH SCHEMABINDING
AS 
SELECT ID, KOLON1 FROM DBO.ORNEKTABLO

ALTER TABLE ORNEKTABLO
ALTER COLUMN KOLON1 INT
```

***
# 95-) T-SQL View - With Check Option Komutu
## === WITH CHECK OPTION Komutu ===
- VIEW'in içerisindeki sorguda bulunan şarta uygun kayıtların INSERT edilmesine müsaade edilip, uymayan kayıtların müsaade edilmemesini sağlayan bir komuttur.

```SQL
CREATE VIEW ORNEKVIEW2
AS
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'a%'

INSERT ORNEKVIEW2 ('AHMET','BİLMEMNEOĞLU')
INSERT ORNEKVIEW2 ('MUSA','UYUMAZ')

SELECT * FROM ORNEKVIEW2
```

- WITH ENCRYPTION ve WITH SCHEMABINDING komutları AS keywordünden önce belirtilirken WITH CHECK OPTION komutu WHERE şartından sonra belirtilmelidir.

```SQL
CREATE VIEW ORNEKVIEW2
AS
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'a%'
WITH CHECK OPTION
```

***
# 96-) T-SQL Fonksiyonlar Giriş
## FUNCTIONS - SCALAR FUNCTION - INLINE FUNCTION

- T-SQL'de iki tip fonksiyon vardır.

- SCALAR Fonksiyonlar => Geriye istediğimiz bir tipte değer gönderen fonksiyon.

- INLINE Fonksiyonlar => Geriye tablo gönderen fonksiyon.

- Bu her iki fonksiyonda fiziksel olarak veritabanında oluşturulmaktadır.

- CREATE komutu ile oluşturulmaktadır.

- Üzerinde çalışılan database'in Programability -> Functions kombinasyonundan oluşturulan fonksiyonlara erişebilmekteyiz.

***
# 97-) T-SQL Scalar Functions - Tanımlama
## SCALAR FUNCTION
## == Fonksiyon Tanımlama ==
- Scalar fonksiyonlara tanımlandıktan sonra Programmability -> Functions -> Scalar Valued Functions kombinasyonundan erişilebilir.
```SQL
CREATE FUNCTION TOPLA(@SAYI1 INT, @SAYI2 INT) RETURNS INT
AS
	BEGIN
		RETURN @SAYI1 +  @SAYI2
	END
```

***
# 98-) T-SQL Scalar Functions - Kullanım
## == Fonksiyon Kullanımı ==
- Fonksiyonu kullanırken şemasıyla beraber çağrılmalıdır.
 ```SQL
SELECT DBO.TOPLA(2,5)
PRINT DBO.TOPLA(10,20) 
```

- ÖRNEK 
- Northwind veritabanında; herhangi bir ürünün %18 KDV dahil olmak üzere toplam maliyetini getiren fonksiyonu yazalım.
```SQL
CREATE FUNCTION MALIYET(@BIRIMFIYATI INT, @STOKMIKTARI INT) RETURNS NVARCHAR(MAX)
AS 
	BEGIN
		DECLARE @SONUC INT = @BIRIMFIYATI * @STOKMIKTARI * 1.18
		RETURN @SONUC
	END

SELECT DBO.MALIYET(10,20)
```

***
# 99-) T-SQL Inline Functions - Tanımlama
## == INLINE FUNCTIONS ==
- Geriye bir değer değil tablo döndüren fonksiyonlardır.

- Geriye tablo göndereceği için bu fonksiyonlar çalıştırılırken sanki bir tablodan sorgu çalıştırılır gibi çalıştırılırlar. Bu yönleriyle VIEW'lara benzerler. VIEW ile yapılan işlevler Inline Functions'larla yapılabilir.

- Genellikle VIEW'le benzer işlevler için VIEW kullanılmasını öneririm.

## == FONKSİYON TANIMLAMA ==
- Inline fonksiyonlara tanımlandıktan sonra Programmability -> Functions -> Table Valued Functions kombinasyonundan erişilebilir.

- Dikkat ! ! !

- Inline Function oluşturulurken BEGIN END yapısı kullanılmaz.
```SQL
CREATE FUNCTION FC_GONDER(@AD NVARCHAR(20), @SOYAD NVARCHAR(20)) RETURNS TABLE 
AS 
	RETURN SELECT Adi, SoyAdi FROM Personeller WHERE Adi = @AD AND SoyAdi = @SOYAD
```

***
# 100-) T-SQL Inline Functions - Kullanım
## == FONKSİYON KULLANIMI ==
- Fonksiyonu şemasıyla birlikte çağırmak gerekmektedir.
```SQL
SELECT * FROM DBO.FC_GONDER('Nancy','Davolio')
```

***
# 101-) T-SQL Fonksiyonlarda With Encryption Komutu
## == Fonksiyonlarda WITH ENCRYPTION Komutu ==
- Eğer ki yazmış olduğumuz fonksiyonların kodlarına 2. 3. şahısların erişimini engellemek istiyorsak WITH ENCRYPTION komutunu kullanmalıyız.

- WITH ENCRYPTION işleminden sonra fonksiyonu oluşturan kişide dahil kimse komutları göremez. Geri dönüş yoktur. Ancak fonksiyonu oluşturan şahsın komutlarn yedeğini bulundurması gerekmektedir. Ya da WITH ENCRYPTION olmaksızın fonksiyonu yeniden ALTER'lamalıyız.

- WITH ENCRYPTION AS keywordünden önce kullanılmalıdır.
```SQL
CREATE FUNCTION ORNEKFONKSIYON() RETURNS INT
WITH ENCRYPTION 
AS 
	BEGIN
		RETURN 3
	END

CREATE FUNCTION ORNEKFONKSIYON2() RETURNS TABLE
WITH ENCRYPTION 
AS 
	RETURN SELECT * FROM Personeller

ALTER FUNCTION ORNEKFONKSIYON() RETURNS INT
AS 
	BEGIN
		RETURN 3
	END
```

***
# 102-) T-SQL Fonksiyonlarla Otomatik Hesaplanabilir Kolonlar(Computed Column)
## == Otomatik Hesaplanabilir Kolonlar - Computed Column ==
- Herhangi bir kolonda fonksiyon kullanılarak otomatik hesaplanabilir kolonlar(Computed Column) oluşturmak mümkündür.

```SQL
CREATE FUNCTION TOPLA(@SAYI1 INT, @SAYI2 INT) RETURNS INT
AS 
BEGIN
	RETURN @SAYI1 + @SAYI2
END

SELECT UrunAdi,DBO.TOPLA(BirimFiyati,HedefStokDuzeyi) HESAPLANMISKOLON FROM Urunler
```

- Örnek 
- Çıktı olarak "____ kategorisindeki _____ ürününün toplam fiyatı : ____'dır. şeklinde bir çıktı veren fonksiyonu yazalım.
```SQL
CREATE FUNCTION RAPOR(@KATEGORI NVARCHAR(MAX),@URUNADI NVARCHAR(MAX), @BIRIMFIYATI INT, @STOK INT) RETURNS NVARCHAR(MAX)
AS
	BEGIN
		DECLARE @CIKTI NVARCHAR(MAX) = @KATEGORI + ' kategorisindeki ' + @URUNADI + ' ürününün toplam fiyatı : ' + CAST(@BIRIMFIYATI * @STOK AS NVARCHAR(MAX)) + ' ''DIR.'
		RETURN @CIKTI
	END

SELECT DBO.RAPOR(K.KategoriAdi,U.UrunAdi,U.BirimFiyati,U.HedefStokDuzeyi)  FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID
```

***
# 103-) T-SQL Stored Procedures - Genel Özellikleri
## STORED PROCEDURES (SAKLI YORDAMLAR)

## == GENEL ÖZELLİKLERİ ==
- Normal sorgudan hızlı çalışırlar.

- Çünkü normal sorgular Execute edilirken Execute Plan işlemi yapılır. Bu işlem sırasında hangi tablodan veri çekilecek hangi kolonlardan gelecek bunlar nerede vs. gibi işlemler yapılır. Bir sorgu her çalıştırıldığında bu işlemler aynen tekrar tekrar yapılır. Fakat sorgu STORED PROCEDURE olarak çalıştırılırsa bu işlem sadece bir kere yapılır ve o da ilk çalıştırma esnasındadır. Diğer çalıştırmalarda bu işlemler yapılmaz. Bundan dolayı hız ve performansta artış sağlanır.

- İçerisinde SELECT INSERT UPDATE ve DELETE ilemleri yapılabilir.

- İç içe kullanılabilir.

- İçersinde fonksiyon oluşturulabilir.

- Sorgularımızın dışarıdan alacağı değerler parametre olarak STORED PROCEDURE'lere geçirilebildiğinden dolayı sorgularımızın SQL INJECTION yemelerini de önlemiş oluruz. Bu yönleriyle de daha güvenlidirler.

- STORED PROCEDURE fiziksel bir veritabanı nesnesidir. Haliyle CREATE komutu ile oluşturulur.

- Fiziksel olarak ilgili veritabanının Programmability -> Stored Procedures kombinasyonundan erişilebilirler.

## == Prototip ==
```SQL
-- CREATE PROC YA DA PROCEDURE [İSİM]
--(
-- VARSA PARAMETRELER
--)AS
-- YAZILACAK SORGULAR, KODLAR, ŞARTLAR, FONKSİYONLAR, KOMUTLAR
```

***
# 104-) T-SQL Stored Procedures Tanımlama
## == STORED PROCEDURE Tanımlama ==
```SQL
CREATE PROC SP_ORNEK
(
	@ID INT -- Aksi söylenmediği taktirde bu parametrenin yapısı inputtur.
)AS
SELECT * FROM Personeller WHERE PersonelID = @ID

```
## Dikkat ! ! !
- Prosedürün parametrelerini tanımlarken parantez kullanmak zorunlu değildir ama okunabilirliği arttırmak için kullanmakta fayda vardır.
```SQL
CREATE PROC SP_ORNEK2
	@ID INT,
	@PARAMETRE2 INT,
	@PARAMETRE3 NVARCHAR(MAX)
AS 
SELECT * FROM Personeller WHERE PersonelID = @ID
```

***
# 105-) T-SQL Stored Procedures Kullanımı
## == STORED PROCEDURES Kullanımı == 
- STORED PROCEDURE yapılarını EXEC komutu eşliğinde çalıştırabilmekteyiz.
```SQL
EXEC SP_ORNEK 3
EXEC SP_ORNEK2 3,4,'ASD'
```

***
# 106-) T-SQL Geriye Değer Döndüren Stored Procedure
## == Geriye Değer Döndüren Stored Procedure Yapısı ==
```SQL
CREATE PROC URUNGETIR
(
	@FIYAT MONEY
)AS
SELECT * FROM Urunler WHERE BirimFiyati > @FIYAT
RETURN @@ROWCOUNT
```

## == KULLANIMI ==
```SQL
EXEC URUNGETIR 40
```
- Bu şekilde geriye döndürülen değeri elde etmeksizin kullanılabilir. Sıkıntı olmaz.

```SQL
DECLARE @SONUC INT 
EXEC @SONUC - URUNGETIR 40
PRINT CAST(@SONUC AS NVARCHAR(MAX)) + ' ADET ÜRÜN BU İŞLEMDEN ETKİLENMİŞTİR'
```

***
# 107-) T-SQL Output Parametre İle Geriye Değer Döndüren Stored Procedure
## == OUTPUT İle Değer Döndürme ==
- INPUT parametre dışarıdan değer alırken OUTPUT parametre içerideki değeri dışarı gönderir.
```SQL
CREATE PROC SP_ORNEK3
(
	@ID INT,
	@ADI NVARCHAR(MAX) OUTPUT,
	@SOYADI NVARCHAR(MAX) OUTPUT
)AS
SELECT @ADI = Adi, @SOYADI = SoyAdi FROM Personeller WHERE PersonelID = @ID
```

## == KULLANIMI ==
```SQL
DECLARE @ADI NVARCHAR(MAX), @SOYADI NVARCHAR(MAX)
EXEC SP_ORNEK3 3,@ADI OUTPUT, @SOYADI OUTPUT
SELECT @ADI + ' ' + @SOYADI
```

***
# 108-) T-SQL Stored Procedures Örnek
## == GENEL ÖRNEK ==
- Dışarıdan aldığı isim, soyisim ve şehir bilgilerini Personeller tablosunda ilgili kolonlara ekleyen STORED PROCEDURE'ü yazınız
```SQL
CREATE PROC SP_PERSONELEKLE
(
	@ISIM NVARCHAR(MAX),
	@SOYISIM NVARCHAR(MAX),
	@SEHIR NVARCHAR(MAX)
) AS
INSERT Personeller(Adi,SoyAdi,Sehir) VALUES(@ISIM, @SOYISIM, @SEHIR)

EXEC SP_PERSONELEKLE 'MUSA','UYUMAZ','ESKİŞEHİR'
SELECT * FROM PERSONELLER
```

***
# 109-) T-SQL Stored Procedure - Parametrelere Varsayılan Değer Verme
## == Parametrelere Varsayılan Değer ==
```SQL
CREATE PROC SP_PERSONELEKLE2
(
	@AD VARCHAR(50) = 'İSİMSİZ',
	@SOYAD VARCHAR(50) = 'SOYİSİMSİZ',
	@SEHIR VARCHAR(50) = 'ŞEHİR GİRİLMEMİŞ'
)AS
INSERT Personeller(Adi,SoyAdi,Sehir) VALUES(@AD,@SOYAD,@SEHIR)

EXEC SP_PERSONELEKLE2 'SERHAT','UYUMAZ','ESKİŞEHİR'
```
- Burada varsayılan değerler devreye girmemektedir.
```SQL
SELECT * FROM Personeller
EXEC SP_PERSONELEKLE2
```
- Normalde bu şekilde parametrelere değer göndermeksizin çalışmaması lazım ama varsayılan değerler tanımda belirtildiği için devreye girmektedirler.

```SQL
Exec SP_PERSONELEKLE2 'İBRAHİM'
```
- @Ad parametresi İBRAHİM değerini alacaktır. Diğer parametreler varsayılan değerleri

***
# 110-) T-SQL Exec Komutu
## EXEC Komutu
- EXEC Komutu EXECUTE yani çalıştır manasına gelen bir komuttur.

- T-SQL programlama dilindeki herşeyi çalıştırır diyebiliriz.

- EXEC sanki bir fonksiyon niteliğinde çalışan tek tırnaklar arasına aldığı komutları çalıştıran bir komuttur.

- Aslında yazdığımız sorgular/komutlar arka planda EXEC komutunun içinde gönderilir.

```SQL
EXEC('SELECT * FROM Personeller')
SELECT * FROM Personeller
```

- Yanlış Kullanım
```SQL
EXEC('DECLARE @SAYAC INT = 0')
EXEC('PRINT @SAYAC')

```

- Doğru Kullanım
```SQL
EXEC('DECLARE @SAYAC INT = 0 PRINT @SAYAC')
```

***
# 111-) T-SQL Stored Procedure İçerisinde Nesne Oluşturma
## == STORED PROCEDURE İçerisinde Nesne Oluşturma ==
```SQL
CREATE PROC SP_TABLOOLUSTUR
(
	@TABLOADI NVARCHAR(MAX),
	@KOLON1ADI NVARCHAR(MAX),
	@KOLON1OZELLIKLERI NVARCHAR(MAX),
	@KOLON2ADI NVARCHAR(MAX),
	@KOLON2OZELLIKLERI NVARCHAR(MAX)
)AS
EXEC
('
CREATE TABLE '+ @TABLOADI + '
(
	' + @KOLON1ADI + ' ' + @KOLON1OZELLIKLERI + ',
	' + @KOLON2ADI + ' ' + @KOLON2OZELLIKLERI + ',
)
')

EXEC SP_TABLOOLUSTUR 'ORNEKTABLO3','ID','INT PRIMARY KEY IDENTITY(1,1)', 'KOLON2','NVARCHAR(MAX)'
```

***
# 112-) T-SQL Triggerlar Giriş
## T-SQL TRIGGERS(Tetikleyiciler)
- Bir işlem yapılırken o işlemin yerine ya da o işlemle beraber başka bir işlemin yapılmasını sağlayan başka bir işlemi tetikleyen yapılardır.

## === DML TRIGGER
- Bir tabloda INSERT, UPDATE ve DELETE işlemleri gerçekleştirildiğinde devreye giren yapılardır. Bu işlemler sonucunda veya sürecinde devreye girerler.

## === DDL TRIGGER
- CREATE, ALTER ve DROP işlemleri sonucunda veya sürecinde devreye girecek olan yapılardır.

***
# 113-) T-SQL DML Triggerlar - Inserted ve Deleted Tabloları
## === DML TRIGGER ===
- Bir tabloda INSET, UPDATE ve DELETE işlemleri gerçekleştirildiğinde devreye giren yapılardır. Bu işlemler sonucunda veya sürecinde devreye girerler.

## *INSERTED TABLE
- Eğer bir tabloda INSERT işlemi yapılıyorsa arka planda işlemler ilk önce RAM'de oluşturulan INSERTED isimli bir tablo üzerinde yapılır. Eğer işlemde bir problem yoksa INSERTED tablosundaki veriler fiziksel tabloya INSERT edilir. İşlem bittiğinde RAM'de oluşturulan bu INSERTED tablosu silinir.

## *DELETED TABLE
- Eğer bir tabloda DELETE işlemi yapılıyorsa arka planda işlemler ilk önce RAM'de oluşturulan DELETED isimli bir tablo üzerinde yapılır. Eğer işlemde bir problem yoksa DELETED tablosundaki veriler fiziksel tabloya INSERT edilir. İşlem bittiğinde RAM'de oluşturulan bu DELETED tablosu silinecektir.

- Eğer bir tabloda UPDATE işlemi yapılıyorsa RAM'de UPDATED isimli bir tablo OLUŞTURULMAZ! ! !

- SQL Server'da ki UPDATE mantığı önce silme(DELETE) sonra eklemedir(INSERT).

- Eğer bir tabloda UPDATE işlemi yapılıyorsa arka planda RAM'de hem DELETED hem de INSERTED tabloları oluşturulur ve işlemler bunlar üzerinde yapılır.

### NOT : UPDATE yaparken güncellenen kaydın orjinali DELETED tablosunda, güncellendikten sonraki hali ise INSERTED tablosunda bulunmaktadır. Çünkü güncelleme demek kaydı önce silmek sonra eklemek demektir.

- DELETED ve INSERTED tabloları, ilgili sorgu sonucu oluştukları için o sorgunun kullandığı kolonlara da sahip olur. Böylece DELETED ve INSERTED tablolarından SELECT sorgusu yapmak mümkündür.

***
# 114-) T-SQL Trigger Tanımlama
## === T-SQL Tanımlama ===
## Prototip
- CREATE TRIGGER [TRIGGER ADI]
- ON [İŞLEM YAPILACAK TABLO ADI]
- AFTER -- veya FOR DELETE, UPDATE, INSERT
- AS
- [KODLAR]

## Dikkat ! ! !
- Tanımlanan TRIGGER'larla ilgili tablonun içerisindeki TRIGGERS sekmesi altından erişebiliriz

```SQL
CREATE TRIGGER ORNEKTRIGGER
ON Personeller
AFTER INSERT 
AS 
SELECT * FROM Personeller

INSERT Personeller(Adi,SoyAdi) VALUES('MUSA','UYUMAZ')
```

- Örnek 1
- Tedarikçiler tablosundan bir veri silindiğinde tüm ürünlerin fiyatı otomatik olarak 10 artsın.
```SQL
CREATE TRIGGER TRIGGERTEDARIKCILER
ON Tedarikciler
AFTER DELETE
AS
UPDATE Urunler SET BirimFiyati = BirimFiyati + 10
SELECT * FROM URUNLER

DELETE FROM Tedarikciler WHERE TedarikciID = 31
```

- Örnek 2
- Tedarikçiler tablosunda bir veri güncellendiğinde, kategoriler tablosunda meyve kokteyli adında bir kategori oluşsun :)
```SQL
CREATE TRIGGER TRGTEDARIKGUNCELLENDIGINDE
ON Tedarikciler
AFTER UPDATE
AS
INSERT Kategoriler(KategoriAdi) VALUES('MEYVE KOKTEYLİ')

UPDATE Tedarikciler SET MusteriAdi = 'SERHAT' WHERE TedarikciID = 29
SELECT * FROM Kategoriler
```

- Örnek 3
- Personeller tablosundan bir kayıt silindiğinde silinen kaydın adı, soyadı, kim tarafından ve hangi tarihte silindiği başka bir tabloya kayıt edilsin Bir nevi log tablosu misali...
```SQL
CREATE TABLE LOGTABLOSU
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	RAPOR NVARCHAR(MAX)
)

CREATE TRIGGER TRIGGERPERSONELLER
ON Personeller
FOR DELETE
AS
DECLARE @ADI NVARCHAR(MAX), @SOYADI NVARCHAR(MAX)
SELECT @ADI = Adi, @SOYADI = SoyAdi FROM DELETED
INSERT LOGTABLOSU(RAPOR) VALUES('ADI VE SOYADI ' + @ADI + ' ' + @SOYADI + ' OLAN PERSONEL ' +SUSER_NAME() + ' TARAFINDAN ' + CAST(GETDATE() AS NVARCHAR(MAX)) + ' TARİHİNDE SİLİNMİŞTİR.')

DELETE FROM Personeller WHERE PersonelID = 16
```

- Örnek 4
- Personeller tablosunda update gerçekleştiği anda devreye giren ve bir log tablosuna Adı ... olan personel ... yeni adıyla değiştirilerek ... kullanıcı tarafından ... tarihinde güncellendi. Kalıbında rapor yazan trigger'ı yazalım.
```SQL
CREATE TRIGGER TRGPERSONELRAPOR
ON Personeller
AFTER UPDATE 
AS
DECLARE @ESKIISIM NVARCHAR(MAX), @YENIISIM NVARCHAR(MAX)
SELECT @ESKIISIM = Adi FROM deleted
SELECT @YENIISIM = Adi FROM inserted
INSERT LOGTABLOSU(RAPOR) VALUES('Adı '+ @ESKIISIM  +' olan personel ' + @YENIISIM +' yeni adıyla değiştirilerek ' + SUSER_NAME() +' kullanıcısı tarafından ' +CAST(GETDATE() AS NVARCHAR(MAX))+ ' tarihinde güncellendi.')

UPDATE Personeller SET Adi = 'MUSA' WHERE PersonelID = 3

SELECT * FROM LOGTABLOSU
```

***
# 115-) T-SQL Multiple Actions Trigger
## === Multiple Actions TRIGGER ===
```SQL
CREATE TRIGGER MULTITRIGGER
ON PERSONELLER
AFTER DELETE, INSERT
AS 
PRINT 'MERHABA'

INSERT Personeller(Adi,SoyAdi) VALUES('MUSA','UYUMAZ')
DELETE FROM Personeller WHERE PersonelID = 30
```

***
# 116-) T-SQL Instead Of Triggerlar
## === INSTEAD OF TRIGGERLAR ===
- Şu ana kadar INSERT UPDATE ve DELETE işlemleri yapılırken şu şu işlemleri yap mantığıyşa çalıştık.(Yanında şunu yap)

- Instead Of Triggerlar ise INSERT UPDATE ve DELETE işlemleri yerine şu şu işleri yap mantığıyla çalışmaktadır. (Yerine Şunu Yap)

## Prototip
- CREATE TRIGGER [TRIGGER ADI]
- ON [TABLO ADI]
- INSTEAD OF DELETE INSERT UPDATE
- AS
- [KOMUTLAR]

- Örnek 5
- Personeller tablosunda UPDATE gerçekleştiği anda yapılacak güncelleştirme yerine bir log tablosuna ADI ... olan personel ... yani adıyla değiştirilerek ... kullanıcı tarafından ... tarihinde güncellenmek istendi. kalıbında rapır yazan trigger'ı yazalım.
```SQL
CREATE TRIGGER TRGPERSONELLERRAPORINSTEAD
ON PERSONELLER
INSTEAD OF UPDATE
AS
DECLARE @ESKIADI NVARCHAR(MAX), @YENIADI NVARCHAR(MAX)
SELECT @ESKIADI = Adi FROM deleted
SELECT @YENIADI = Adi FROM inserted
INSERT LOGTABLOSU(RAPOR) VALUES('Adı '+ @ESKIADI  +' olan personel ' + @YENIADI +' yeni adıyla değiştirilerek ' + SUSER_NAME() +' kullanıcısı tarafından ' +CAST(GETDATE() AS NVARCHAR(MAX))+ ' tarihinde istendi.')

UPDATE Personeller SET Adi = 'HÜSEYİN' WHERE PersonelID = 15
```

- Örnek 6
- Personeller tablosunda adı Andrew olan kaydın ilinmesini engelleyen ama diğerlerine izin veren trigger'ı yazalım.
```SQL
CREATE TRIGGER AndrewTrigger
ON PERSONELLER
AFTER DELETE 
AS
DECLARE @ADI NVARCHAR(MAX)
SELECT @ADI = Adi FROM deleted
IF @ADI = 'Andrew'
	BEGIN 
		PRINT 'Bu kaydı Silemezsiniz.'
		ROLLBACK -- Yapılan tüm işlemleri geri alır.
	END

DELETE FROM Personeller WHERE PersonelID = 17
```
		
***
# 117-) T-SQL DDL Triggerlar
## === DDL TRIGGERLAR ===
- CREATE, ALTER ve DROP işlemleri sonucunda veya sürecinde devreye girecek olan yapılardır.
```SQL
CREATE TRIGGER DDL_TRIGGER
ON DATABASE
FOR DROP_TABLE, ALTER_TABLE, CREATE_FUNCTION, CREATE_PROCEDURE, DROP_PROCEDURE --VS. VS.
AS
PRINT 'BU İŞLEM GERÇEKLEŞTİRİLEMEZ'
ROLLBACK

DROP TABLE LOGTABLOSU
```
## Dikkat ! ! !
- DDL TRİGGER'larla ilgili veritabanının Programmability -> Database Triggers sekmesi altından erişebilirsiniz.

***
# 118-) T-SQL Trigger Disable - Enable
## === TRIGGER'ı Devre Dışı Bırakma ===
```SQL
DISABLE TRIGGER ORNEKTRIGGER ON PERSONELLER
```

## === TRIGGER'ı Aktifleştirme ==
```SQL
ENABLE RIGGER ORNEKTRIGGER ON PERSONELLER
```

***
# 119-) T-SQL Transaction Giriş
## TRANSACTION
-  Birden çok işlemin bir arada yapıldığı durumlarda eğer parçayı oluşturan işlemlerden herhangi birinde sorun olursa tüm işlemi iptal ettirmeye yarar.

- Örneğin; kredi kartı ile alışveriş işlemlerinde transaction işlemi vardır. Siz marketten ürün alırken sizin hesabınızdan para düşülecek, marketin hesabına para aktarılıcaktır. Bu işlemde hata olmaması gerekir ve bundan dolayı bu işlem bir transaction bloğunda gerçekleştirilmelidir. Bu esnada herhangi bir sorun olursa bütün işlemler transaction tarafından iptal edilebilecektir.

- BEGIN TRAN veya BEGIN TRANSACTION : Transaction işlemi başlatır.

- COMMIT TRAN : Transaction işlemini başarıyla sına erdirir. İşlem(ler)i gerçekleştirir.

- ROLLBACK TRAN : Transaction işlemini iptal eder. İşlem(ler)i geri alır.

- COMMIT TRAN yerine sadece COMMIT yazılabilir

- ROLLBACK TRAN yerine sadece ROLLBACK yazılabilir.

- Normalde default olarak herşey BEGIN TRAN ile başlayıp COMMIT TRAN ile biter. !!! Biz bu yapıları kullanmasak bile!!!

***
# 120-) T-SQL Transaction Tanımlama
## == TRANSACTION Tanımlama ==
## PROTOTIP
- BEGIN TRAN [TRANSACTION ADI]
- İŞLEMLER

```SQL
INSERT Bolge VALUES(5,'Çorum') -- Varsayılan olarak TRANSACTION kontrolünde bir işlemdir. Netice olarak gene varsayılan olarak COMMIT TRAN olarak bitmektedir.

BEGIN TRAN KONTROL
INSERT Bolge VALUES(6,'Ankara')
COMMIT TRAN
```

- Transaction'a isim vermek zorunda değiliz.

```SQL
BEGIN TRAN 
INSERT Bolge VALUES(7,'Antalya')
COMMIT TRAN

BEGIN TRAN KONTROL
DECLARE @i int
DELETE FROM Personeller WHERE PersonelID > 20
SET @i = @@ROWCOUNT
IF @i = 1
BEGIN
	PRINT 'KAYIT SİLİNDİ.'
	COMMIT
	-- YA DA 
	-- COMMIT TRAN
END
ELSE
BEGIN
	PRINT 'İşlemler geri alındı'
	ROLLBACK
	-- YA DA
	-- ROLLBACK TRAN
END
```

***
# 121-) T-SQL Transaction Banka Uygulaması
## Örnek
- İki adet banka tablosu oluşturalım. Bankalar arası havale işlemi gerçekleştirelim. Ve bu işlemleri yaparken transaction kullanalım.
```SQL
CREATE DATABASE BANKADB
GO
USE BANKADB
GO 
CREATE TABLE ABANKA
(
	HESAPNO INT,
	BAKIYE MONEY
)
GO
CREATE TABLE BBANKA
(
	HESAPNO INT,
	BAKIYE MONEY
)
GO
INSERT ABANKA VALUES(10,1000),
					(20,2500)
INSERT BBANKA VALUES(30,2300),
					(40,760)
GO
CREATE PROC SP_HAVALEYAP
(
	@BANKAKIMDEN NVARCHAR(MAX),
	@GONDERENHESAPNO INT,
	@ALANHESAPNO INT,
	@TUTAR MONEY
)AS
BEGIN TRANSACTION KONTROL
DECLARE @ABAKIYE INT, @BBAKIYE INT, @HESAPTAKIPARA MONEY
IF @BANKAKIMDEN = 'ABANKA'
BEGIN
	SELECT @HESAPTAKIPARA = BAKIYE FROM ABANKA WHERE HESAPNO=@GONDERENHESAPNO
	IF @TUTAR > @HESAPTAKIPARA
	BEGIN
		PRINT CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA GÖNDERİLMEK İSTENEN TUTARDAN DAHA AZ PARA MEVCUTTUR.'
		ROLLBACK -- İŞLEMLERİ GERİ AL
	END
	ELSE
	BEGIN 
		UPDATE ABANKA SET BAKIYE = BAKIYE - @TUTAR WHERE HESAPNO = @GONDERENHESAPNO
		UPDATE BBANKA SET BAKIYE = BAKIYE + @TUTAR WHERE HESAPNO = @ALANHESAPNO
		PRINT 'ABANKASINDAKİ '+ CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTAN ABANKASINDAKİ ' +CAST(@ALANHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESABA ' +  CAST(@TUTAR AS NVARCHAR(MAX)) + ' DEĞERİNDE PARA HAVALE EDİLMİŞTİR.'
		PRINT 'SON DEĞERLER;'

		SELECT @BBAKIYE=BAKIYE FROM BBANKA WHERE HESAPNO = @ALANHESAPNO
		SELECT @ABAKIYE=BAKIYE FROM ABANKA WHERE HESAPNO = @GONDERENHESAPNO
		PRINT 'ABANKASINDAKİ ' + CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA KALAN BAKİYE : ' + CAST(@ABAKIYE AS NVARCHAR(MAX))
		PRINT 'BBANKASINDAKİ ' + CAST(@ALANHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA KALAN BAKİYE : ' + CAST(@BBAKIYE AS NVARCHAR(MAX))
		COMMIT
	END
END

ELSE
BEGIN
	SELECT @HESAPTAKIPARA=BAKIYE FROM BBANKA WHERE HESAPNO = @GONDERENHESAPNO
	IF @TUTAR > @HESAPTAKIPARA
	BEGIN
		PRINT CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA GÖNDERİLMEK İSTENEN TUTARDAN DAHA AZ PARA MEVCUTTUR.'
		ROLLBACK -- İŞLEMLERİ GERİ AL
	END
	ELSE
	BEGIN
	
	UPDATE BBANKA SET BAKIYE = BAKIYE - @TUTAR WHERE HESAPNO = @GONDERENHESAPNO
	UPDATE ABANKA SET BAKIYE = BAKIYE + @TUTAR WHERE HESAPNO = @ALANHESAPNO
	PRINT 'BBANKASINDAKİ '+ CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTAN ABANKASINDAKİ ' +CAST(@ALANHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESABA ' +  CAST(@TUTAR AS NVARCHAR(MAX)) + ' DEĞERİNDE PARA HAVALE EDİLMİŞTİR.'
	PRINT 'SON DEĞERLER;'

	SELECT @BBAKIYE=BAKIYE FROM BBANKA WHERE HESAPNO = @GONDERENHESAPNO
	SELECT @ABAKIYE=BAKIYE FROM ABANKA WHERE HESAPNO = @ALANHESAPNO
	PRINT 'ABANKASINDAKİ ' + CAST(@ALANHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA KALAN BAKİYE : ' + CAST(@ABAKIYE AS NVARCHAR(MAX))
	PRINT 'BBANKASINDAKİ ' + CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA KALAN BAKİYE : ' + CAST(@BBAKIYE AS NVARCHAR(MAX))
	COMMIT
	END
	END

EXEC SP_HAVALEYAP 'ABANKA', 10,30,100
EXEC SP_HAVALEYAP 'BBANKA', 30,10,300
EXEC SP_HAVALEYAP 'ABANKA',20,40,5000
```

***
# 122-) T-SQL SQL Server Database Yedeğini Alma ve Yükleme - Backup ve Restore
## SQL SERVER Database Yedeği Alma ve Yükleme

## BACKUP İle Yedek Alma
## Restore İle Yedeği Yükleme

***
# 123-) T-SQL SQL Server Database Yedeğini Alma ve Yükleme - Generate Scripts
## GENERATE SCRIPTS

***
# 124-) T-SQL En Son Primary Key ID yi Bulmak
-- T-SQL En Son Primary Key ID'yi Bulmak

```SQL
SELECT IDENT_CURRENT('Personeller')

SELECT IDENT_CURRENT('Personeller') + 1
```

***
# 125-) T-SQL @@Identity, Scope_Identity ve Ident_Current Komutları
## @@IDENTITY, SCOPE_IDENTITY() ve IDENT_CURRENT() Komutları
## == @@IDENTITY
- Açılmış olan bağlantıda(connection); tablo yahut sorgunun çalıştığı scope'a bakmaksızın son üretilen identity değerini vermektedir.
## Dikkat ! ! !
- Trigger kullanılan sorgularda yanlış sonuç alma ihtimalinden dolayı kullanılması tavsiye edilmez.

```SQL
INSERT Personeller(Adi,SoyAdi) VALUES('MUİDDİN','İMPATRİNO') 
SELECT @@IDENTITY
```

## == SCOPE_IDENTITY()
- Açılmış olan bağlantıda(connection) ve sorgunun çalıştığı scope'ta son üretilen identity değerini döndürür.
## Dikkat ! ! !
- Trigger kullanılan sorgularda @@IDENTITY yerine bu fonksiyonun kullanılması tavsiye edilir.

```SQL
INSERT Personeller(Adi,SoyAdi) VALUES('MUİDDİN','İMPATRİNO') 
SELECT SCOPE_IDENTITY()
```

## == IDENT_CURRENT('TabloAdi')
- Bağlantı ve sorgunun çalıştırıldığı scope'a bakmaksızın parametre olarak verilen tabloda üretilen sonuncu identity değerini döndürür.

```SQL
CREATE DATABASE ORNEKVERITABANI
GO
CREATE TABLE ORNEKTABLO1
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
)
GO 
CREATE TABLE ORNEKTABLO2
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
)

USE ORNEKVERITABANI

CREATE TRIGGER KONTROL
ON ORNEKTABLO1 FOR INSERT 
AS 
INSERT ORNEKTABLO2 VALUES('','')

INSERT ORNEKTABLO2 VALUES('1','1')
INSERT ORNEKTABLO2 VALUES('2','2')
INSERT ORNEKTABLO2 VALUES('3','3')
INSERT ORNEKTABLO2 VALUES('4','4')
INSERT ORNEKTABLO2 VALUES('5','5')

INSERT ORNEKTABLO1 VALUES('6','6')

SELECT @@IDENTITY
UNION ALL
SELECT SCOPE_IDENTITY()
UNION ALL
SELECT IDENT_CURRENT('ORNEKTABLO1')
```

***
# 126-) T-SQL Default Values İle Sadece Identity Kolonuna Veri Eklemek

## DEFAULT VALUES İle Sadece Identity Kolonuna Veri Eklemek
- Eğer ki veritabanında görevi sadece diğer tablolar tarafından referans alınacağı ideleri üretecek ve barındıracak olan bir tabloya ihtiyacınız varsa kullanılır.

```SQL
CREATE DATABASE ORNEKVERITABANI

CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
)

USE ORNEKVERITABANI

INSERT ORNEKTABLO
DEFAULT VALUES
```

***
# 127-) T-SQL Top Keywordü İle Update İşlemi
## TOP Keywordü İle Update İşlemi
- Biz herhangi bir UPDATE işleminde herhangi bir filtreleme uygulayabiliriz ama yapacağımız filtrelemede ilklik ya da sonluk gerekiyorsa bunu TOP komutuyla yapmamız daha doğru olacaktır.

```SQL
CREATE TABLE VERILER
(
	ID INT PRIMARY KEY IDENTITY,
	DEGER INT
)

DECLARE @I INT = 1
WHILE @I < 151
BEGIN 
	INSERT VERILER(DEGER) VALUES(@I)
	SET @I = @I + 1
END

SELECT TOP 2 * FROM Personeller

SELECT * FROM Veriler

UPDATE VERILER SET DEGER = DEGER - 5 WHERE ID <= 10
UPDATE TOP(10) VERILER SET DEGER = DEGER - 5
```

***
# 128-) T-SQL Top Keywordü İle Delete İşlemi
## TOP Keywordü İle DELETE İşlemi

```SQL
SELECT * FROM VERILER

DELETE FROM VERILER WHERE ID > 100

DELETE FROM VERILER WHERE ID<=10

DELETE TOP(5) FROM VERILER
```

***
# 129-) T-SQL ROW_NUMBER Fonksiyonu
## T-SQL ROW_NUMBER Fonksiyonu
- T-SQL'de SELECT sorgusu neticesinde yapısal olarak elde ettiğimiz tabloların satır index numaralarına ihtiyacımız olabilir. 

- Veritabanında tekrar eden datalar/veriler varsa veriler arasında ayrım yapmak yahut sıralamak gibi işlemler yapmak istiyorsak ROW_NUMBER() fonksiyonunu kullanabiliriz.

- Temelde işlevi her satıra karşılık PRIMARY kolonundan bağımsız sıralı index numarası atanmış kolon tanımlanmaktadır.

## Prototipi 
- SELECT ROW_NUMBER() OVER(ORDER BY KOLONADI) INDEXER, * FROM TABLO 

```SQL
SELECT ROW_NUMBER() OVER(ORDER BY Adi) INDEXER, * FROM Personeller ORDER BY PersonelID
```

***
# 130-) T-SQL ROW_NUMBER Fonksiyonu - Partition By Komutu İle Gruplama
## PARTITION BY Komutu İle Gruplama

## PROTOTİP
- SELECT ROW_NUMBER() OVER(PARTITION BY KOLON1 ORDER BY KOLON2) INDEXER, * FROM TABLO

```SQL
SELECT ROW_NUMBER() OVER(PARTITION BY MusteriID ORDER BY OdemeTarihi) INDEXER,* FROM Satislar ORDER BY SatisID
```

***
# 131-) T-SQL ANSI_NULLS Komutu
## T-SQL ANSI_NULLS Komutu

- SET ANSI_NULLS [ON | OFF]

- ANSI_NULLS komutu, WHERE şartlarında kontrol edilen eşitlik yahut eşit değillik durumlarında NULL değerlerin dikkate alınıp alınmayacağını belirlememizi sağlayan bir özelliktir.

- 'ON' değeri verilirse NULL değerler dikkate alınmaz.

- 'OFF' değeri verilirse NULL değerler dikkate alınır.

```SQL
SET ANSI_NULLS ON

SELECT * FROM PersonelMaas WHERE Maas = NULL

SET ANSI_NULLS OFF
```

***
# 132-) SQL Server 2016 Dynamic Data Masking Giriş
## Dynamic Data Masking
- Dinamik veri maskeleme sistemidir.

- Veritabanında ilişkisel tablolarımızda tuttuğumuz verilerimizi tararken gösterilmesi istenen veriler dışındaki verileri maskeleme özelliğidir.

- Verinin orjinal halini yani fiziksel yapısını değiştirmeden kullanıcıya bir kısmını göstermek yahut gizlemektir.

- Bir alışveriş sitesinde kayıtlı kullanıcının her bilgisine örneğin tc kimlik numarasına, kredi kartı numarasına, telefon numarasına, ev adresine bunun gibi kritik bilgilere biz kritik görevler dışındakilerin personellerin ulaşmasını istemeyiz.

- Bir nevi güvenlik önlemi olsada amaca dönük sorguların gerçekleştirilmesini sağlamaktır.

- Dynamic Data Masking default, email ve partial olmak üzere 3 adet fonksiyonel parametre ile çalışmaktadır.

***
# 133-) SQL Server 2016 Dynamic Data Masking - default, email ve partial Parametreleri
## == DEFAULT Parametresi ==
- Metinsel : XXXX
- Sayısal : 0000
- Tarihsel : 01.01.2000 00:00:00.0000000
- Binary : 0 -> ASCII

## == EMAIL Parametresi ==
- 'musa.uyumaz73@gmail.com' : 'mXXX@XXXX.com'

## == PARTIAL Parametresi ==
- Partial(3,H,2)

***
# 134-) SQL Server 2016 Dynamic Data Masking Uygulama
## == Dynamic Data Masking Nasıl Uygulanır? ==
## Prototip
- CREATE TABLE [TABLO ADI]
-(
- [KOLON ADI] [KOLON TİPİ] MASKED WITH(FUNCTION = 'DEFAULT()')
-)

```SQL
CREATE TABLE OGRENCILER2
(
	OGRENCIID INT PRIMARY KEY IDENTITY,
	ADI NVARCHAR(10) MASKED WITH (FUNCTION = 'DEFAULT()') NULL,
	SOYADI NVARCHAR(10) MASKED WITH (FUNCTION = 'DEFAULT()') NULL,
	MEMLEKETI NVARCHAR(10) MASKED WITH (FUNCTION = 'DEFAULT()') NULL,
	TCNO INT MASKED WITH (FUNCTION = 'DEFAULT()') NULL,
	SUBE NVARCHAR(1) MASKED WITH (FUNCTION = 'DEFAULT()') NULL,
	EMAIL NVARCHAR(MAX) MASKED WITH (FUNCTION = 'EMAIL()') NULL,
	HAKKINDA NVARCHAR(MAX) MASKED WITH (FUNCTION = 'PARTIAL(3,"H",2)') NULL,
	DOGUMTARIHI DATETIME MASKED WITH (FUNCTION = 'DEFAULT()') NULL,
)

INSERT OGRENCILER2 VALUES('MUSA','UYUMAZ','ESKİŞEHİR',1234,'A','musa.uyumaz73@gmail.com','Türk Milletine Canım Feda Olsun...','1999-02-14')
INSERT OGRENCILER2 VALUES('GENÇAY','YILDIZ','ARTVİN',1234,'A','gncy@gencayyildiz.com','Türk Milletine Canım Feda Olsun...','1992-09-05')
INSERT OGRENCILER2 VALUES('İBRAHİM','YILDIRIM','MALATYA',1234,'B','ibrahim@yildirim.com','Türk Milletine Canım Feda Olsun...','1975-09-05')

SELECT * FROM OGRENCILER2

CREATE USER YETKILIUSER WITHOUT LOGIN --YETKILIUSER isminde bir kullanıcı oluşturuluyor.
GO 
GRANT SELECT ON OGRENCILER2 TO YETKILIUSER --YETKILIUSER isimli kullanıcıya OGRENCILER2 tablosunda SELECT yetkisi veriliyor.

EXECUTE AS USER = 'YETKILIUSER' -- YETKILIUSER isimli kullanıcıya geçiş sağlıyoruz.

SELECT * FROM OGRENCILER2
```

***
# 135-) SQL Server 2016 Dynamic Data Masking - Alter İle Maskelenmiş Kolon Ekleme
## == ALTER İle Kolona Dynamic Data Masking Uygulama ==
```SQL
ALTER TABLE OGRENCILER2
ADD EKKOLON NVARCHAR(MAX) MASKED WITH (FUNCTION = 'PARTIAL(3,"XXX",0)')

EXECUTE AS USER = 'YETKILIUSER'
SELECT * FROM OGRENCILER2
```

***
# 136-) SQL Server 2016 Dynamic Data Masking - Alter İle Kolunun Maske Formatını Güncelleme
## == ALTER İle Dynamic Data Masking Kolonunda Değişiklik Yapma ==
```SQL
ALTER TABLE OGRENCILER2
ADD EKKOLON NVARCHAR(MAX) MASKED WITH (FUNCTION = 'PARTIAL(3,"XXX",0)')

ALTER TABLE OGRENCILER2
ADD EKKOLON NVARCHAR(MAX) MASKED WITH (FUNCTION = 'PARTIAL(2,"AAA",4)')

EXECUTE AS USER='YETKILIUSER'
SELECT * FROM OGRENCILER2
```

***
# 137-) SQL Server 2016 Dynamic Data Masking Özelliğini Kolondan Kaldırma
## == Dynamic Data Masking Kaldırma ==
```SQL
ALTER TABLE OGRENCILER2
ALTER COLUMN EMAIL DROP MASKED

EXECUTE AS USER='YETKILIUSER'
SELECT * FROM OGRENCILER2
```

***
# 138-) SQL Server 2016 Dynamic Data Masking Özelliğini Kullanıcıya Özel Pasifleştirme
## == Kullanıcıya Göre Dynamic Data Masking Özelliğini Pasifleştirme == 
```SQL
GRANT UNMASK TO YETKILIUSER

EXECUTE AS USER = 'YETKILIUSER'
SELECT * FROM OGRENCILER2
```

***
# 139-) SQL Server 2016 Temporal Tables Giriş
## Temporal Tables(System-Verisoned Table - Zamansal Tablolar)
- Veritabanında yapılan DML işlemlerini raporlamamızı sağlayan bir yapıdır.

- Tablomuzda bulunan kayıtların zaman içinde değişikliklerini yani UPDATE güncelleme dediğimiz bu değişiklikleri izlenmesini ve takip edilmesini sağlayan bir yapı sunmaktadır.

- Tablo üstünde yanlışlıkla yapılan DELETE ve UPDATE sorgularını geri getirilmesini sağlamaktadır.

- Bir verinin belirli bir zamana yahut zaman aralığına odaklı izlenebilmesini de sağlayabiliyoruz.

***
# 140-) SQL Server 2016 Temporal Tables Çalışma Mantığı
## == Bir Verinin Zamansal Takibi ==
- == Veri İlk Kaydedildiğinde (INSERT)==

- == Veri İlk Güncellendiğinde (UPDATE)==

- == Verinin Sonraki Güncellemelerinde (UPDATE)==

***
# 141-) SQL Server 2016 Temporal Tables Özelliğini Kullanırken Nelere Dikkat Etmeliyiz?
## == Temporal Tables Özelliğini Kullanırken Nelere Dikkat Etmeliyiz? ==
- Temporal Tables ile raporlama ve takip mekanizmasını oluşturacağımız tablolarda PRIMARY KEY tanımlanmış bir kolon olması gerekmektedir. Bu şekilde yaşam döngüsünde hangi verinin değişime uğradığını PRIMARY KEY aracılığıyla ayırt edebileceğiz.

- Takibi sağlayacağımız ve kaydınıu tutacağımız tablomuzun içerisinde bir başlangıç(StartDate) birde bitiş(EndDate) niteliğinde iki adet DATETIME2 tipinden kolonların bulunması gerekmektedir.

- Linked Server üzerinde Temporal Tables kullanılmamaktadır.

- History tablomuzda constraint yapılarının hiçbirini uygulayamayız.

- Eğer bir tabloda Temporal Tables aktifse o tabloda TRUNCATE işlemi gerçekleştiremiyoruz.

- History tablosunda direkt olarak DML işlemleri gerçekleştiremiyoruz.

- Temporal Tables özelliğinin bulunduğu bir tabloda Computed Column(Hesaplanmış Kolon) tanımlayamıyoruz.

***
# 142-) SQL Server Pratikte Temporal Table Çalışma Mantığı
## == Temporal Table Çalışma Mekanizması ==
```SQL
UPDATE DERSKAYITLARI SET DERS = 'MATEMATİK2' WHERE DERSID = 1
UPDATE DERSKAYITLARI SET DERS = 'FİZİK2' WHERE DERSID = 2
UPDATE DERSKAYITLARI SET DERS = 'KİMYA2' WHERE DERSID = 3
UPDATE DERSKAYITLARI SET DERS = 'KİMYA3' WHERE DERSID = 3
UPDATE DERSKAYITLARI SET DERS = 'BİYOLOJİ2' WHERE DERSID = 4
UPDATE DERSKAYITLARI SET DERS = 'BİYOLOJİ3' WHERE DERSID = 4

SELECT * FROM DERSKAYITLARI
SELECT * FROM DERSKAYITLARILOG
```

***
# 143-) SQL Server 2016 Temporal Tables Oluşturma
## == Temporal Tables Oluşturma ==
```SQL
CREATE TABLE DERSKAYITLARI
(
	---------- 1. KISIM ----------
	DERSID INT PRIMARY KEY IDENTITY(1,1),
	DERS NVARCHAR(MAX),
	ONAY BIT,
	---------- 1. KISIM ----------

	---------- 2. KISIM ----------
	STARTDATE DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL,
	ENDDATE DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL,
	---------- 2. KISIM ----------

	---------- 3. KISIM ----------
	PERIOD FOR SYSTEM_TIME(STARTDATE,ENDDATE)
	---------- 3. KISIM ----------
)
	---------- 4. KISIM ----------
	WITH(SYSTEM_VERSIONING = ON(HISTORY_TABLE = DBO.DERSKAYITLARILOG)) -- Eğer HISTORY_TABLE özelliği ile History tablosuna isim vermezsek rastgele isimde oluşturulur.
	---------- 4. KISIM ----------
```

***
# 144-) SQL Server 2016 Var Olan Tabloyu Temporal Tables Olarak Ayarlama
## == Var Olan Tabloyu Temporal Tables Olarak Ayarlama ==
```SQL
CREATE TABLE DERSKAYITLARI
(
	DERSID INT PRIMARY KEY IDENTITY(1,1),
	DERS NVARCHAR(MAX),
	ONAY BIT
)

INSERT DERSKAYITLARI VALUES('MATEMATİK',1),
						   ('FİZİK',1),
						   ('KİMYA',1),
						   ('TÜRKÇE',0),
						   ('COĞRAFYA',0),
						   ('VATANDAŞLIK',0)
```

- Eğer bu tabloyu temporal yapmak istiyorsak dikkat ! ! !

- Tablo içerisinde veri var mı? Yok mu? Eğer varsa yeni eklenecek olan StartDate ve EndDate kolonları boş kalamayacakları için varsayılan değerlerin belirtilmesi gerekmektedir. Yok eğer veri yoksa bu işlemi düşünmemize gerek olmayacaktır.

## Eğer Veri Yoksa...
```SQL
ALTER TABLE DERSKAYITLARI
ADD 
STARTDATE DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL,
ENDDATE DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL,
PERIOD FOR SYSTEM_TIME(STARTDATE,ENDDATE)
```

## Eğer Veri Varsa...
```SQL
ALTER TABLE DERSKAYITLARI
ADD 
STARTDATE DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL
DEFAULT CAST('1900-01-01 00:00:00.0000000' AS DATETIME2),
ENDDATE DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL
DEFAULT CAST('9999-12-31 23:59:59.9999999' AS DATETIME2),
PERIOD FOR SYSTEM_TIME(STARTDATE,ENDDATE)
```

- Şeklinde periyodik kayıt kolonlarımızı ekleyebiliriz.

- Kolonlar eklendikten sonra ilgili tablo aşağıdaki gibi Temporal hale getirilir.
```SQL
ALTER TABLE DERSKAYITLARI
SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = DBO.DERSKAYITLARILOG))
```

***
# 145-) SQL Server 2016 Parametrik Olarak Temporal Tabloyu Sorgulama
## == History Tablosuna Özel Temporal Tabloyu Sorgulama ==
- SELECT * FROM DERSKAYITLARI DK INNER JOIN DERSKAYITLARILOG DKL ON DK.DERSID = DKL.DERSID WHERE DAY(DKL.STARTDATE) >= DAY(CAST 'TARİH' AS DATETIME2) OR DAY(DKL.ENDDATE) <= DAY(CAST('2016-09-26 06:23:45.8195851' AS DATETIME2))

- Bu şekilde ilişkisel tablolar ile de sorgulama yapabiliriz. Lakin tablomuzu History tablosunun periyoduna özel bir şekilde de rahatça sorgulatabilmekteyiz.

## == AS OF<DATETIME> ==
- Mantıksal sorgusu : 'STARDATE >= DATETIME and ENDDATE < DATETIME' şeklindedir.
```SQL
SELECT * FROM DERSKAYITLARI
FOR SYSTEM_TIME AS OF '2016-09-26 06:22:53.5432528' WHERE DERSID = 3
```

## == FROM <START_DATETIME> TO <END_DATETIME> ==
- Mantıksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' şeklindedir.
```SQL
SELECT * FROM DERSKAYITLARI
FOR SYSTEM_TIME FROM '2016-09-26 06:22:53.5432528' TO '2016-09-26 06:22:53.5432528' 
WHERE DERSID = 3
```

## == BETWEEN <start_datetime> AND <end_datetime> ==
- Mantıksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' şeklindedir.

## == CONTAINED IN(start_datetime, end_datetime) ==
- Mantıksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' şeklindedir.

***
# 146-) SQL Server 2016 Veritabanındaki Temporal Tabloları Listelemek
## == Temporal Tabloları Listelemek
```SQL
SELECT NAME,OBJECT_ID,TEMPORAL_TYPE_DESC, HISTORY_TABLE_ID, OBJECT_NAME(HISTORY_TABLE_ID) AS [HISTORY TABLO ADI] FROM SYS.TABLES WHERE OBJECT_NAME(HISTORY_TABLE_ID) IS NOT NULL
```

- ya da

```SQL
SELECT NAME,OBJECT_ID,TEMPORAL_TYPE_DESC, HISTORY_TABLE_ID, OBJECT_NAME(HISTORY_TABLE_ID) AS [HISTORY TABLO ADI] FROM SYS.TABLES WHERE TEMPORAL_TYPE_DESC = 'SYSTEM_VERSIONED_TEMPORAL_TABLE'
```

***
# 147-) SQL Server 2016 Temporal Tables'i Pasifize Etme
## == Temporal Tables'i Pasifize Etme ==
```SQL
ALTER TABLE DBO.DERSKAYITLARI SET(SYSTEM_VERSIONING = OFF)

TRUNCATE TABLE DERSKAYITLARI
DROP TABLE DERSKAYITLARI
```

***
# 148-) SQL Server 2016 Row Level Security Özelliği Giriş
## ROW LEVEL SECURITY
- Veritabanı yönetim sistemlerinde amacımız düzenli ve organize edilmiş ilişkisel bir şekilde verilerimizi modifiye etmektir. Bu amacı icra ederken güvenlik birinci dereceden önem teşkil etmekte ve çeşitli yöntemlerle güvenlik mekanizması sağlanmaktadır.

- Bu yöntemler genellikle kullanıcı rol ve yetkilendirmeleriyle sağlanmaktayken verilere dönük oalrakta VIEW gibi yapılarla gerçekleştirilmektedir.

- ROW LEVEL SECURITY özelliği ile Kullanıcılara tablo üzerinde yetki verirken tüm kayıtlara değil sadece kendisini ilgilendiren kayıtlara özel bir yetkilendirme yapabiliriz.

***
# 149-) SQL Server 2016 Row Level Security Özelliğinin Kullanımı
## == Row Level Security Uygulaması ==
```SQL
CREATE DATABASE YENILIKLER
GO 
USE YENILIKLER
GO 
CREATE TABLE SATISLAR
(
	SATISID INT PRIMARY KEY IDENTITY,
	URUN NVARCHAR(MAX),
	ADET INT,
	KULLANICI NVARCHAR(MAX)
)
GO
INSERT SATISLAR VALUES
('AURUN',3,'MUSA'),
('AURUN',3,'GENÇAY'),
('BURUN',5,'MEHMET'),
('CURUN',13,'ALİ'),
('DURUN',23,'GENÇAY'),
('EURUN',33,'MEHMET'),
('FURUN',43,'ALİ'),
('GURUN',53,'GENÇAY'),
('HURUN',63,'MEHMET'),
('IURUN',73,'ALİ'),
('OURUN',83,'GENÇAY'),
('PURUN',93,'MEHMET'),
('RURUN',133,'ALİ')
```

## Kullanıcıları oluşturalım...
```SQL
CREATE USER GENCAY WITHOUT LOGIN
CREATE USER MEHMET WITHOUT LOGIN
CREATE USER ALI WITHOUT LOGIN
```

## Bu kullanıcılara SATISLAR tablosunda SELECT yetkisi verelim.
```SQL
GRANT SELECT ON SATISLAR TO GENCAY
GRANT SELECT ON SATISLAR TO MEHMET
GRANT SELECT ON SATISLAR TO ALI
```

- ROW LEVEL SECURITY kullanabilmek için Inline Table Value Function oluşturmalıyız.
```SQL
CREATE FUNCTION ROWLEVELSECURITYFUNCTION (@KULLANICIADI AS SYSNAME)
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN SELECT 1 ROWLEVELRESULT
WHERE @KULLANICIADI = USER_NAME()
```

- Şimdi bu fonksiyonu birazdan oluşturacağımız Security Policy(Güvenlik Politikası) için Filter Predicate olarak ekliyoruz. Yani uzun lafın kısası filtre olarak ayarlıyoruz.
```SQL
CREATE SECURITY POLICY GUVENLIKFILTRESI
ADD FILTER PREDICATE DBO.ROWLEVELSECURITYFUNCTION(KULLANICI)
ON DBO.SATISLAR
WITH(STATE = ON)
```

## Dikkat ! ! !
- KULLANILAN TÜM YAPIDA ŞEMA ADLARINI(.dbo) UNUTMA
- 
```SQL
EXEC AS USER = 'MEHMET'
SELECT * FROM SATISLAR
```