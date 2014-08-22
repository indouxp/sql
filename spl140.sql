-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- case
--
declare @hour int = datepart(hour, getdate())
declare @msg varchar(20)

select @msg =
  case
    when @hour < 12 then 'おはよう'
    when @hour < 17 then 'こんにちは'
    else 'こんばんわ'
  end

print @msg
