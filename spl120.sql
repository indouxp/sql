-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- IF EXISTS、IF NOT EXISTS

use sampleDB

if not exists (select * from emp where empno = 9999)
begin
  print "ないよ"
end
else
begin
  print "あるよ"
end
