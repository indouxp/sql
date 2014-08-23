-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- 一時テーブル
use sampleDB
select
  row_number() over (order by hiredate desc) as rownum,
  *
into
  #t
from
  emp

select
  *
from
  #t
where
  rownum between 1 and 3
