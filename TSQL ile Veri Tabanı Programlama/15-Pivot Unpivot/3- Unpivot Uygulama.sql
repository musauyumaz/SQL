-- 3- Unpivot Uygulama
SELECT * FROM SALESPIVOT

SELECT CATEGORY1,MONTH_,SALES
FROM
(
SELECT * FROM SALESPIVOT
)SOURCETABLE
UNPIVOT
(
	SALES FOR MONTH_ IN([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
)UPVT