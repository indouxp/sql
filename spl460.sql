-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- �p�����[�^�[�̓��̓`�F�b�N
--
use sampleDB
drop procedure proc1
go

create procedure proc1
  @parm1 int = NULL
as
  if @parm1 is null
    begin
      print '�Ȃ邾��'
      return
    end
  else
    begin
      select * from emp where deptno = @parm1
    end

go

exec proc1 10
