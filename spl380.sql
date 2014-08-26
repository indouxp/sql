-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ROW_NUMBER によるページング
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
