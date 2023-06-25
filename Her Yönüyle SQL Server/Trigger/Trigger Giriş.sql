-- Trigger tetikleyici demektir.

-- Veritabaný tablosunda bir iþlem gerçekleþtiðinde baþka iþlemin otomatik olarak gerçekleþmesi anlamýna gelir.

-- Bir olay olduðunda baþka bir olayýn otomatik olarak tetiklenme/çalýþma mekanizmasý.

-- Burada iþlem olarak kastettiðimiz data manipülasyonudur.

-- Data manipülasyonlarý ise Insert Update ve Delete iþlemleridir.

-- Yazýlan Trigger'lar Insert, Update ve Delete iþlemlerinden sonra otomatik çalýþan yapýlardýr.

-- Data manipülasyonlarý : Veritabaný tablosunda bir kayýtla alakalý bir deðiþiklik olmasý durumu.

-- Select trigger olmaz triggerlar sadece Insert Update ve Delete iþlemlerinden sonra otomatik çalýþmasýný istediðimiz yapýlardýr.

-- Trigger'larýn içinde sanal olarak oluþan Inserted ve Deleted tablolarý vardýr. Bunlar sadece trigger'larýn içerisinde kullanabildiðimiz ve gerçekte olmayan tablolardýr.

-- Inserted tablosu yeni eklenen kaydýn ya da update edildiðinde deðiþen kaydýn yeni deðerini tutar.

-- Deleted tablosu ise silinen kaydý ya da deðiþtirilen kaydýn eski deðerini tutar.

-- Trigger'lar genelde otomatik toplam hesaplama, son deðeri alma ya da loglama amacý ile kullanýlýr.