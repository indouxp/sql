-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- 複数の変数宣言

declare @x int, @y int, @z varchar(20)
select @x = 88
select @y = 99
select @z = 'AAAAA'

select @x, @y, @z
