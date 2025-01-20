--Hur tar jag fram alla avdelningar utan anst�llda
--dessa kallas orphans
SELECT
	*
FROM
	Departments AS t1 LEFT OUTER JOIN Employees AS t2	
	ON t1.id=t2.DeptID	
WHERE
	t2.DeptID IS NULL--Kopplingkolumnen
--Ni f�r fram orphans n�r kopplingsolumnen �r NULL

--Ta fram alla avdelningar utan anst�llda och
--anst�llda som inte har n�gon avdelning
SELECT
	*
FROM
	Departments AS t1 FULL OUTER JOIN Employees AS t2	
	ON t1.id=t2.DeptID	
WHERE
	t2.DeptID IS NULL OR t1.id IS NULL