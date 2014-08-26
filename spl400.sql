-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ユーザー定義テーブル型
use sampleDB
create type type1
  as table (
      rownum int,
      empno int,
      empname char(50),
      sal int,
      hiredate datetime,
      deptno int
)
go

declare @t type1

insert into @t
  select
    row_number() over (order by hiredate desc) as rownum,
    *
  from
    emp

select
  *
from
  @t
where
  rownum between 3 and 4
