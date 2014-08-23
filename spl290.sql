-- SQL Server 2012 ©K‘ƒVƒŠ[ƒY No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- top
use sampleDB

DECLARE @N int
SELECT @N = 3
while @n <= 5
begin
  print "top" + cast(@n as varchar)
  SELECT TOP(@N) * FROM emp ORDER BY hiredate DESC
  set @n += 2
end
go
