-- SQL Server 2012 ©K‘ No.‚T Transact-SQL “ü–å
-- SQL11_SelfLearning05_TSQL.pdf
-- IF EXISTSAIF NOT EXISTS

use sampleDB

if not exists (select * from emp where empno = 9999)
begin
  print "‚È‚¢‚æ"
end
else
begin
  print "‚ ‚é‚æ"
end
