-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- case
declare @hour int = datepart(hour, getdate())
select
  case
    when @hour < 12 then 'おはよ'
    when @hour < 19 then 'こんにちは'
    else 'こんばんわ'
  end
