-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ���Isql
use sampleDB
declare @field varchar(30)
set @field = 'empname'
execute('select ' + @field + ' from emp')
go
