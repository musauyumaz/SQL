-- Trigger tetikleyici demektir.

-- Veritaban� tablosunda bir i�lem ger�ekle�ti�inde ba�ka i�lemin otomatik olarak ger�ekle�mesi anlam�na gelir.

-- Bir olay oldu�unda ba�ka bir olay�n otomatik olarak tetiklenme/�al��ma mekanizmas�.

-- Burada i�lem olarak kastetti�imiz data manip�lasyonudur.

-- Data manip�lasyonlar� ise Insert Update ve Delete i�lemleridir.

-- Yaz�lan Trigger'lar Insert, Update ve Delete i�lemlerinden sonra otomatik �al��an yap�lard�r.

-- Data manip�lasyonlar� : Veritaban� tablosunda bir kay�tla alakal� bir de�i�iklik olmas� durumu.

-- Select trigger olmaz triggerlar sadece Insert Update ve Delete i�lemlerinden sonra otomatik �al��mas�n� istedi�imiz yap�lard�r.

-- Trigger'lar�n i�inde sanal olarak olu�an Inserted ve Deleted tablolar� vard�r. Bunlar sadece trigger'lar�n i�erisinde kullanabildi�imiz ve ger�ekte olmayan tablolard�r.

-- Inserted tablosu yeni eklenen kayd�n ya da update edildi�inde de�i�en kayd�n yeni de�erini tutar.

-- Deleted tablosu ise silinen kayd� ya da de�i�tirilen kayd�n eski de�erini tutar.

-- Trigger'lar genelde otomatik toplam hesaplama, son de�eri alma ya da loglama amac� ile kullan�l�r.