--4-Excel Raporlama Senaryosu
SELECT 
O.ID,O.DATE_,
DATENAME(MONTH,O.DATE_) MONTH_,
U.ID USERID, U.USERNAME_, U.NAMESURNAME,U.GENDER,U.EMAIL,U.TELNR1,
A.ADDRESSTEXT,A.POSTALCODE,
C.CITY, T.TOWN,
I.ITEMCODE,I.ITEMNAME,I.CATEGORY1,
OD.AMOUNT,OD.UNITPRICE,OD.LINETOTAL,OD.ITEMID
FROM ORDERS O
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID=O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID