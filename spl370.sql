-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ROW_NUMBER �ɂ��y�[�W���O
use sampleDB
select
  *
from
  (select
    row_number() over (order by hiredate desc) as rownum,
    *
   from
    emp) t
where
  rownum between 1 and 3