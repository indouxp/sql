-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- 順位付け関数
use sampleDB
select
  row_number() over (order by hiredate desc),
  empno,
  empname,
  format(hiredate, 'yyyy/MM/dd')
from
  emp
