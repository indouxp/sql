-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- SELECT ステートメントによる複数値の代入

declare @x int, @y int, @z varchar(20)
select @x = 88, @y = 99, @z = 'AAAAA'

select @x, @y, @z
