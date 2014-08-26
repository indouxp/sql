-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- 順位付け関数 PARTITION BY 句によるグループ化
use sampleDB
select
  row_number() over (partition by deptno order by hiredate desc) as row_number,
  rank() over (partition by deptno order by hiredate desc) as rank,
  dense_rank() over (partition by deptno order by hiredate desc) as dense_rank,
  ntile(3) over (partition by deptno order by hiredate desc) as ntile,
  *
from
  emp
