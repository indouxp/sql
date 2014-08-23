-- SQL Server 2012 ©K‘ƒVƒŠ[ƒY No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- 
use sampleDB
declare @name varchar(50), @hiredate datetime
select
  @name = empname,
  @hiredate = hiredate
from
  emp
where
  empno = 1
print @name
print @hiredate
print format(@hiredate, 'yyyy/MM/dd hh:mm:ss')
print format(getdate(), 'yyyy/MM/dd hh:mm:ss')
go

