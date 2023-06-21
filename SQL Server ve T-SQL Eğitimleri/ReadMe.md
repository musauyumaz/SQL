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