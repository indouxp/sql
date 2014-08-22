-- SQL Server 2012 ©K‘ No.‚T Transact-SQL “ü–å
-- SQL11_SelfLearning05_TSQL.pdf
-- case
--
declare @hour int = datepart(hour, getdate())
declare @msg varchar(20)

select @msg =
  case
    when @hour < 12 then '‚¨‚Í‚æ‚¤'
    when @hour < 17 then '‚±‚ñ‚É‚¿‚Í'
    else '‚±‚ñ‚Î‚ñ‚í'
  end

print @msg
