-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ���Isql
use sampleDB
declare @statement varchar(30)
set @statement = 'select * from emp'
execute(@statement)
go
