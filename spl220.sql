-- SQL Server 2012 ���K�� No.�T Transact-SQL ����
-- SQL11_SelfLearning05_TSQL.pdf
-- SQL Server �ŗ��p�ł���ƍ������̈ꗗ
--
SELECT
  *
FROM
  fn_helpcollations()
WHERE
  name LIKE '%japan%'
go
