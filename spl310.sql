-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ���ʕt���֐�
use sampleDB
select
  row_number() over (order by hiredate desc),
  empno,
  empname,
  format(hiredate, 'yyyy/MM/dd')
from
  emp
