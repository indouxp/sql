-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- 動的sql
use sampleDB
declare @sql nvarchar(100)
declare @tab varchar(30) = 'emp'
print @tab
set @sql = N'select * from ' + @tab
execute sp_executesql @sql
go
