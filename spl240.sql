-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- 動的sql
use sampleDB
declare @tab varchar(30)
set @tab = 'emp'
select * from @tab
go
