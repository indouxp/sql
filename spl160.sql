-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- インクリメント演算子
declare @i int
set @i = 1
while  @i < 10
  begin
    print @i
    set @i += 1
  end
