-- 2-Ad Hoc Query ve Stored Procedure Kavramlar�
-- Temel anlamda bir SQL Server'dan sorgulama i�lemini ger�ekle�tirmek i�in iki tane yap� kullan�r�z. Bunlardan biri Ad Hoc Query biri de Stored Procedure'd�r.
-- SQL c�mlelerini herhangi bir uygulamadan g�nderdi�imiz zaman bu i�lem Ad Hoc Query olmaktad�r.
-- Ad Hoc Query'i sisteme g�nderdi�im zaman arka planda 6 ad�mdan olu�an bir i�lem ger�ekle�ir.
-- 1. Query: Query'nin g�nderilmesi ve veritaban� taraf�ndan bu Query'inin al�nmas�.
-- 2. Parse: Al�nan Query'nin parse edilmesi Yani ben bu sorguyu do�ru mu yazd�m bir yerde bir eksiklik mi var bunun kontrol edilmesi.
-- 3. Optimize: Veritaban� tablosundan �ekilen sorgunun en h�zl� en do�ru �ekilde �ekilece�inin planlamas� ve optimize edilmesi. Tamamen Index kavram�yla alakal�. Sistemde bir tabloda benim sorguma uygun bir �ekilde hangi index varsa o indexin belirlenmesi ve buna Execution Plan dedi�imiz plan�n ��kart�lmas�.
-- 4. Compile: Olu�turulan bu Execution Plan'�n compile edilmesi/derlenmesi durumudur ki Stored Procedure'ler haf�zada derlenmi� olarak saklan�rlar. Derlenip makine diline �evrilmesi s�z konusu.
-- 5. Execute: Derlenen bu kodun �al��t�r�lmas� Execute edilmesi.
-- 6. Result: Sonu�lar�n Client'a g�nderilmesi durumu.

-- Stored Procedure'ler T-SQL kodlar�n�n derlenerek haf�za da tutulmu� halidir.
-- Stored Procedure'lerde ise sadece Execute ve Result ad�mlar� ger�ekle�ir.
-- Stored Procedure'ler Ad Hoc Query'lere g�re performansl� ve h�zl� �al���r.
-- Stored Procedure bizlere ciddi manada y�netilebilirlik sa�lar.