-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- �o�̓p�����[�^
use sampleDB
go
create procedure proc4
  @param1 int,
  @param2 int OUTPUT
as
  select * from emp where deptno = @param1
  set @param2 = @@rowcount
go

declare @result int = 0
exec proc4 10, @result OUTPUT

print @result
