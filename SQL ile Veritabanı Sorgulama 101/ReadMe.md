# Veritabanı Oluşturma ve Normalizasyon
## Alıştırma 1
- Test isimli bir veritabanı oluşturunuz. (Daha önce oluşturduysanız veritabanı silip yeniden oluşturunuz)
- Bu veritabanının içine USERS isimli bir tablo oluşturunuz.
- Bu tabloya 
  * ID:1
  * USERNAME:muyumaz 
  * NAMESURNAME: MUSA UYUMAZ
  * CITY:ESKİŞEHİR
  * TOWN:SİVRİHİSAR
  * BIRTHDATE:14.02.1999
- olacak şekilde kayıt giriniz.

```SQL
CREATE DATABASE Test;
USE Test;
CREATE TABLE USERS(
ID INT PRIMARY KEY,
USERNAME VARCHAR(15),
NAMESURNAME VARCHAR(15),
CITY VARCHAR(15),
TOWN VARCHAR(15),
BIRTHDATE DATE);

INSERT INTO USERS(ID,USERNAME,NAMESURNAME,CITY, TOWN,BIRTHDATE) VALUES(1,'muyumaz','MUSA UYUMAZ','ESKİŞEHİR','SİVRİHİSAR','1999-02-14');
```

## Alıştırma 2
- Az önceki tabloya 
  * ID:1
  * USERNAME:ocolokoglu 
  * NAMESURNAME: Ömer Faruk ÇOLAKOĞLU
  * CITY:İstanbul
  * TOWN:Kadıköy
  * BIRTHDATE:01.01.1990
- olacak şekilde kayıt giriniz.

## Alıştırma 3
- Bir önceki örnekte kullandığınız USERS tablosunun NAMESURNAME alan uzunluğunu 50 olarak güncelleyiniz ve içine tekrardan aşağıdaki değerleri girmeyi deneyiniz.
- 
  * ID:1
  * USERNAME:ocolokoglu 
  * NAMESURNAME: Ömer Faruk ÇOLAKOĞLU
  * CITY:İstanbul
  * TOWN:Kadıköy
  * BIRTHDATE:01.01.1990
- olacak şekilde kayıt giriniz.
## Alıştırma 4
- USERS tablosundaki ID alanını otomatik artan olarak değiştiriniz 
- 
  * ID:1
  * USERNAME:ocolokoglu 
  * NAMESURNAME: Ömer Faruk ÇOLAKOĞLU
  * CITY:İstanbul
  * TOWN:Kadıköy
  * BIRTHDATE:01.01.1990
- olacak şekilde kayıt giriniz.
## Alıştırma 5
- TEST veritabanı içine SENTENCES isimli bir tablo oluşturunuz. 
- SQL dili veri ile konuşmanın alfabesidir. cümleisini Google translate kullanarak Çince'ye çeviriniz. ve elde ettiğiniz çeviri cümlesini SENTENCES tablosuna SENTENCE1, SENTENCE2, SENTENCE3, SENTENCE4 alanlarına yapıştırınız sonuçları inceleyiniz.

|SENTENCES|SENTENCES|
|---------|---------|
|ID:|INT IDENTITY(1,1)|
|SENTENCE1:|CHAR(200)|
|SENTENCE2:|VARCHAR(200)|
|SENTENCE3:|NCHAR(200)|
|SENTENCE4:|NVARCHAR(200)|

## Alıştırma 6
|USERS1|USERS1|
|---------|---------|
|NAMESURNAME:|NCHAR(4000)|

|USERS2|USERS2|
|---------|---------|
|NAMESURNAME:|NVARCHAR(4000)|
- TEST veritabanı içine USERS1 isimli bir tablo oluşturunuz.
- TEST veritabanı içine USERS2 isimli bir tablo oluşturunuz.
- Aşağıdaki SQL scripti ile sırası ile USERS1 ve USERS2 tablolarına 100000 satır kayıt ekleyiniz.
```SQL
 INSERT INTO USERS1("NAMESURNAME") VALUES("ÖMER ÇOlAKOĞLU")
 GO 10000
```
```SQL
 INSERT INTO USERS2("NAMESURNAME") VALUES("ÖMER ÇOlAKOĞLU")
 GO 10000
```
```SQL
EXEC SP_SpaceUsed USERS1
EXEC SP_SpaceUsed USERS2
```
komutları ile iki tablonun boyutunu karşılaştırınız.

# SQL Dili
## Alıştırma 1
- CRM isimli yeni bir veritabanı oluşturunuz, var ise siliniz.
- Bu veritabanının içie CUSTOMERS isimli bir tablo oluşturunuz.
- Bu tabloya Customers.xslx dosyasındaki kayıtları kopyalayarak ekleyiniz.
|CUSTOMERS||
|---------|---------|
|ID:|INT IDENTITY(1,1)|
|NAMESURNAME:|VARCHAR(50)|
|GENDER:|VARCHAR(1)|
|BIRTHDATE:|DATE|
|CITY:|VARCHAR(50)|
|TOWN:|VARCHAR(50)|
|TELNR:|VARCHAR(15)|
|TCNUMBER:|VARCHAR(11)|

## Alıştırma 2
- Bir önceki alıştırmada CRM veritabanına eklediğiniz kayıtları,
- SELECT cümlesi ile tüm kolonları gelecek şekilde çekiniz.
- SELECT cümlesi ile sadece NAMESURNAME, GENDER, BIRTHDATE alanları gelecek şekilde çekiniz.
- SELECT cümlesi ile ID hariç tüm alanlar gelecek şekilde çekiniz.
## Alıştırma 3
- SELECT cümlesi ile CUSTOMERS tablosundan veri çekiniz.
- CUSTOMERS tablosunun içini truncate ile boşaltınız.
- SELECT cümlesi ile tablonun içini kontrol ediniz
- INSERT cümlesi ile tabloya 1 satır yeni kayıt ekleyiniz.

|CUSTOMERS||
|---------|---------|
|ID:|1|
|NAMESURNAME:|CEM ARSLAN|
|GENDER:|E|
|BIRTHDATE:|1967-01-25|
|CITY:|AYDIN|
|TOWN:|ÇİNE|
|TELNR:|XXX63312XXX|
|TCNUMBER:|XX0024783XX|

## Alıştırma 4
- CUSTOMERS tablosunu truncate ediniz.
- customers.xlsx dosyasındaki tüm satırlar için excel formülü kullanaark bir script oluşturunuz ve bu scripti kullanarak veritabanına tüm kayıtları insert ediniz.

## Alıştırma 5
- CUSTOMERS tablosuna GSMOPERATOR isimli bir alan ekleyiniz(VARCHAR(15))
- Bu alanı 'Turkcell' olarak güncelleyiniz.

## Alıştırma 6
- CUSTOMERS tablosuna AGE isimli bir alan ekleyiniz.(INT)
- Bu alan doğum tarihine göre hesaplayarak güncelleyiniz.

## Alıştırma 7
- CUSTOMERS tablosunda NAMESURNAME alanındaki Allow Null özelliğini kaldırınız.
- Customers tablosuna NAMESURNAME alanı olmayacak şekilde insert cümlesi gönderiniz.
- Customers tablosuna TELNR ve TCNO alanları olmayacak şekilde insert cümlesi gönderiniz.

## Alıştırma 8
- CUSTOMERS tablosunu truncate ediniz.
- Excel'de oluşturduğunuz INSERT scriptini kopyalayarak SSMS üzerinde çalıştırınız. 
- ID alanını kontrol ediniz.
- DELETE FROM CUSTOMERS diyerek tablodaki tüm verileri siliniz.
- Excel'de oluşturduğunuz INSERT scriptini kopyalayarak SSMS üzerinde çalıştırınız.
- ID alanını kontrol ediniz.

# Where
## Alıştırma 1
1. CRM veritabanını varsa siliniz ve CRM.bak dosyasından yedekten dönünüz.
2. Customers tablosunda ID'si 1'e eşit olan kaydı çeken SQL sorgusunu yazınız.
3. Customers tablosunda cinsiyeti Erkek olan kayıtları çeken SQL sorgusunu yazınız.
4. Customers tablosunda cinsiyeti Kadın olmayan kayıtları çeken SQL sorgusunu yazınız.
5. Customers tablosunda doğum tarihi 17.08.1990 olan kayıtları çeken SQL sorgusunu yazınız.
6. Customers tablosunda ismi Melis TÜRKMEN olan kaydı çeken SQL sorgusunu yazınız.

|CUSTOMERS||
|---------|---------|
|ID:|INT IDENTITY(1,1)|
|NAMESURNAME:|VARCHAR(50)|
|GENDER:|VARCHAR(1)|
|BIRTHDATE:|DATE|
|CITY:|VARCHAR(50)|
|TOWN:|VARCHAR(50)|
|TELNR:|VARCHAR(15)|
|TCNUMBER:|VARCHAR(11)|

## Alıştırma 2
1. Customers tablosunda ID'si 100'den büyük olan kayıtları getiriniz.
2. Customers tablosunda ID'si 100'den küçük olan kayıtları getiriniz.
3. Customers tablosunda ID'si 100'den küçük ya da 100'e eşit olan kayıtları getiriniz.
4. Customers tablosunda doğum tarihi 1990 oncesi olan kayıtları getiriniz.
5. Customers tablosunda doğum tarihi 1990 ve oncesi olan kayıtları getiriniz.
6. Customers tablosunda ID'si 100 ile 200 arasında olan kayıtları getiriniz.
7. Customers tablosunda isminin baş harfi A ile D arasında olan kayıtları getiriniz.
7. Customers tablosunda isminin baş harfi K ile M arasında olan kayıtları getiriniz.

## Alıştırma 3
1. Customers tablosunda ismi Ali ile başlayan kişileri listeleyen SQL sorgusunu yazınız.
2. Customers tablosunda ismi Ali olanları listeleyen SQL sorgusunu yazınız.
3. Customers tablosunda ikinci ismi Ali olanları listeleyen SQL sorgusunu yazınız.
4. Customers tablosunda adsoyad alanında Can geçen kayıtları listeleyen SQL sorgusunu yazınız.
5. Customers tablosunda soyadı Can ile biten kayıtları listeleyen SQL sorgusunu yazınız.
6. Customers tablosunda soyadı Can olan kayıtları listeleyen SQL sorgusunu yazınız.


## Alıştırma 4
1. Customers tablosunda GENDER alanını varchar(10) olarak değiştiriniz.
2. GENDER alanını E için ERKEK, K için KADIN olacak şekilde güncelleyiniz.
3. Customers tablosuna AGE isimli integer bir alan ekleyiniz.
4. AGE alanını bugünün tarihinden doğum günü tarihini yıl olarak çıkararak güncelleyiniz.
5. Yaşı 23,33,43,53,63 olan kayıtları listeleyecek SQL sorgusunu yazınız.
6. Customers tablosuna AGEGROUP isimli VARCHAR(20) türünde bir alan ekleyiniz.
7. AGEGROUP alanını yaşa göre güncelleyiniz.

- 20-40 yaş arası olanlar için Genç
- 41-60 yaş arası olanlar için Orta Yaşlı
- 60'tan büyük olanlar için Yaşlı
- Olacak şekilde güncelleyiniz.
## Alıştırma 5
1. Customers tablosunda ID'si 1 olan kaydı siliniz.
2. Customers tablosunda adı Uğur GÖNENÇ olan kaydı siliniz.
3. Customers tablosunda şehri İstanbul olan kayıtları siliniz.
4. Customers tablosunda 30 yaş altı olan kayıtları siliniz.
5. Customers tablosunda yaş grubu ORTA YAŞLI olan kayıtları siliniz.

## Alıştırma 6
1. CRM Database'ini siliniz ve CRM.bak dosyasından restore ediniz.
2. CUSTOMERS tablosuna AGE alanını ekleyip bu alanı doğum tarihine göre güncelleyiniz.
3. CUSTOMERS tablosundan Bursa'da yaşayan ve cinsiyeti Erkek olanların listesini çekiniz.
4. CUSTOMERS tablosundan ismi A ile başlayan yaşı 40 ve 50 arasında olanların listesini çekiniz.
5. CUSTOMERS tablosundan İstanbul'da yaşayan ve yaş aralığı 20-30 ya da 50-60 aralığından olanların listesini çekiniz.

## Alıştırma 7
1. CUSTOMERS tablosuna CATEGORY isimli VARCHAR(30) türünde bir alan ekleyiniz ve bu alanı yaş grubu ve cinsiyete göre güncelleyiniz.

- 20-40 yaş arası Genç Erkek, Genç Kadın
- 41-60 Orta Yaşlı Erkek, Orta Yaşlı Kadın
- 60'tan büyük olanlar Yaşlı Erkek, Yaşlı Kadın

2. Customers tablosundan İzmir'de yaşayan ve kategorisi Yaşlı Erkek ya da Genç Erkek olanların listesini çekiniz.
3. Customer tablosundan İzmir'de yaşayan, ilçesi Karşıyaka, Bornova ya da Ödemiş olan ve kategorisi Yaşlı Erkek ya da Genç Erkek olanların listesini çekiniz.