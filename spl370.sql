-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ROW_NUMBER によるページング
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
