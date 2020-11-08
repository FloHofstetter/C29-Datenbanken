SELECT P.PNAME
FROM PROJECT AS P
JOIN DEPARTMENT AS D
  ON P.DNUM = D.DNUMBER
JOIN EMPLOYEE AS E
  ON D.MGRSSN = E.SSN
WHERE E.LNAME = 'Wong'
ORDER BY P.PNAME ASC;