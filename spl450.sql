-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- �X�g�A�h�v���V�[�W��
--
use sampleDB
go

drop procedure proc1
go

create procedure proc1
    @parm1 int = 10
  as
    select * from emp where deptno = @parm1

