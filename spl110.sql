-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- IF キーワードによる条件分岐
declare @x int
set @x = datepart(hour, getdate())
if @x < 12
  begin
    print 'おはよう'
  end
else
  if @x < 18
    begin
      print 'こんにちは'
    end
  else
    begin
      print 'こんばんわ'
    end
