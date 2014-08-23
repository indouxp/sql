-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ���Isql
use sampleDB
--select * from emp where empname like '%�c%' and sal > 290000
--go

declare @sal int = 200000

while @sal <= 300000
begin
  print @sal
  execute sp_executesql N'SELECT * FROM emp WHERE empname LIKE @p1 AND sal > @p2',
                        N'@p1 varchar(50), @p2 int',
                        @p1 = '%�c%', @p2 = @sal

  set @sal += 90000
end
go
