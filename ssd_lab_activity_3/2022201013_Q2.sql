select e.ssn, e.Fname, cnt FROM
(SELECT Super_ssn, COUNT(*) as cnt FROM EMPLOYEE GROUP BY Super_ssn) as A
join EMPLOYEE AS e ON e.Ssn=A.Super_ssn
order by cnt;