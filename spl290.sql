-- SQL Server 2012 ©K‘ No.‚T Transact-SQL “ü–å
-- SQL11_SelfLearning05_TSQL.pdf
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
