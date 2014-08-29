-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ストアドプロシージャ
--
use sampleDB
go

--drop procedure proc1
--go

create procedure proc1
as
  select * from emp where deptno = 20

exec proc1
go
