--Hur tar jag fram alla avdelningar utan anställda
--dessa kallas orphans
SELECT
	*
FROM
	Departments AS t1 LEFT OUTER JOIN Employees AS t2	
	ON t1.id=t2.DeptID	
WHERE
	t2.DeptID IS NULL--Kopplingkolumnen
--Ni får fram orphans när kopplingsolumnen är NULL

--Ta fram alla avdelningar utan anställda och
--anställda som inte har någon avdelning
SELECT
	*
FROM
	Departments AS t1 FULL OUTER JOIN Employees AS t2	
	ON t1.id=t2.DeptID	
WHERE
	t2.DeptID IS NULL OR t1.id IS NULL