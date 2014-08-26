-- SQL Server 2012 é©èKèëÉVÉäÅ[ÉY No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- CTE
USE sampleDB
go

WITH cteTest1
  AS
  (
    SELECT
      ROW_NUMBER() OVER (ORDER BY hiredate DESC) AS rownum,
      *
    FROM
      emp
  )

SELECT
  *
FROM
  cteTest1
WHERE
  rownum BETWEEN 1 AND 3
