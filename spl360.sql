-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ���ʕt���֐� PARTITION BY ��ɂ��O���[�v��
use sampleDB
select
  row_number() over (partition by deptno order by hiredate desc) as row_number,
  rank() over (partition by deptno order by hiredate desc) as rank,
  dense_rank() over (partition by deptno order by hiredate desc) as dense_rank,
  ntile(3) over (partition by deptno order by hiredate desc) as ntile,
  *
from
  emp
