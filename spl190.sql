-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- WAITFOR DELAY による待機

select getdate()

waitfor delay '00:00:10'

select getdate()
