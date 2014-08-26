-- SQL Server 2012 ©K‘ƒVƒŠ[ƒY No.6
-- SQL11_SelfLearning06_TSQL2.pdf
--
use sampleDB
print "t1"
select * from t1 order by a

declare @a int = 4, @b varchar(100) = 'EEE'

merge into t1
  using (select @a as a, @b as b) var
    on t1.a = var.a
    when matched then
      update set t1.b = var.b
    when not matched then
      insert values (var.a, var.b);

print "t1"
select * from t1 order by a
