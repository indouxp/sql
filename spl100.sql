-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- CAST
declare @x int = 88, @y int = 35
print '変数の値は' + cast(@x as varchar)
print '変数の値は' + @y
