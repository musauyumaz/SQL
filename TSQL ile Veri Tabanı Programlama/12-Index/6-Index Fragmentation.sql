-- 6-Index Fragmentation
-- Fragmentation : Sisteme yeni gelen kay�tlar�n s�ral� bir �ekilde de�il pagelerin sonuna s�ras�z bir �ekilde yaz�larak kay�tlar�n bir k�sm�n�n s�ral� bir �ekilde olmas� bir k�sm�n�n da s�ras�z bir �ekilde olmas�.

INSERT INTO CUSTOMERS
SELECT TOP 10000 NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, NAME_, SURNAME, TCNO FROM CUSTOMERS

-- ��te bu fragmentation'u �nlemek i�in index rebuild i�lemlerini ger�ekle�tiririz. Index'lerin yeniden d�zeltilerek s�ral� hale getirilmesidir.