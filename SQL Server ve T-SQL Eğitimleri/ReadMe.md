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