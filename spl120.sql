-- SQL Server 2012 ���K�� No.�T Transact-SQL ����
-- SQL11_SelfLearning05_TSQL.pdf
-- IF EXISTS�AIF NOT EXISTS

use sampleDB

if not exists (select * from emp where empno = 9999)
begin
  print "�Ȃ���"
end
else
begin
  print "�����"
end
