-- SQL Server 2012 é©èKèëÉVÉäÅ[ÉY No.6
-- SQL11_SelfLearning06_TSQL2.pdf
--
use sampleDB
print "t1"
SELECT * FROM t1 order by a
print "t2"
SELECT * FROM t2 order by a

merge into t1
  using t2
    on t1.a = t2.a
    when matched then
      update set t1.b = t2.b
    when not matched then
      insert values (t2.a, t2.b);

print "t1"
SELECT * FROM t1 order by a
print "t2"
SELECT * FROM t2 order by a
