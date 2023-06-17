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


