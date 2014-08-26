-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- �e�[�u���ϐ�
use sampleDB

declare @t table
  (rownum int,
    empno int,
    empname char(50),
    sal int,
    hiredate datetime,
    deptno int)

insert into @t
  select row_number() over (order by hiredate desc) as rownum,
    *
  from
    emp

select
  *
from
  @t
where
  rownum between 1 and 3
