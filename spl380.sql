-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ROW_NUMBER �ɂ��y�[�W���O
use sampleDB
select
  *
from
  emp
order by
  hiredate desc
offset 0 rows
fetch next 3 rows only

select
  *
from
  emp
order by
  hiredate desc
offset 3 rows
fetch next 3 rows only
