-- == WITH ENCRYPTION KOMUTU ==
-- E�er yazd���m�z VIEW'�n kaynak kodlar�n�, Object Explorer penceresinde VIEWS kategorisine sa� t�klayarak Design Modda a��p g�r�nt�lenmesini istemiyorsak WITH ENCRYPTION komutu ile VIEW'� olu�turmal�y�z.
-- Dikkat ! ! !
-- WITH ENCRYPTION i�leminden sonra VIEW'i olu�turan ki�ide dahil kimse komutlar� g�remez. Geri d�n�� yoktur. Ancak VIEW'i olu�turan �ahs�n komutlar�n yede�ini bulundurmas� gerekmektedir. Ya da WITH ENCRYPTION olmaks�z�n VIEW yap�s�n� yeniden ALTER'lamal�y�z.
-- Dikkat ! ! !
-- Bir dikkat etmemiz gereken nokta da WITH ENCRYPTION ifadesini AS keyword�nden �nce yazmal�y�z.

CREATE VIEW ORNEKVIEWPERSONELLER
WITH ENCRYPTION 
AS 
SELECT Adi,SoyAdi,Unvan FROM Personeller
-- Bu i�lemi yapt�ktan sonra Design Modu kapat�lm��t�r.