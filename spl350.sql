-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- 順位付け関数
use sampleDB
select
  row_number() over (order by hiredate desc) as row_number,
  rank() over (order by hiredate desc) as rank,
  dense_rank() over (order by hiredate desc) as dense_rank,
  ntile(3) over (order by hiredate desc) as ntile,
  *
from
  emp
