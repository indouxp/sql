-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- SQL Server で利用できる照合順序の一覧
--
SELECT
  *
FROM
  fn_helpcollations()
WHERE
  name LIKE '%japan%'
go
