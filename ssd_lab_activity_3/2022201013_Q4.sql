SELECT dept.Dnumber, Dname, LOL 
FROM DEPARTMENT as dept
join (SELECT COUNT(*) AS LOL, Dnumber FROM DEPT_LOCATIONS GROUP BY Dnumber) as dlocno
on dlocno.dnumber=dept.Dnumber
	WHERE Mgr_ssn IN(
			SELECT Essn FROM DEPENDENT WHERE Sex="F" GROUP BY Essn HAVING COUNT(*)>1
		);

