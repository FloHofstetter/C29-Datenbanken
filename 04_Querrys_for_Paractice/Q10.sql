SELECT D.DNAME AS DepName, count(E.SSN) AS Empl, AVG(E.SALARY) AS AvgSalary
FROM DEPARTMENT AS D
JOIN EMPLOYEE AS E
  ON E.DNO = D.DNUMBER
-- WHERE D.DNUMBER = 5
GROUP BY D.DNAME
ORDER BY D.DNAME ASC
