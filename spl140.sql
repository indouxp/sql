-- SQL Server 2012 ���K�� No.�T Transact-SQL ����
-- SQL11_SelfLearning05_TSQL.pdf
-- case
--
declare @hour int = datepart(hour, getdate())
declare @msg varchar(20)

select @msg =
  case
    when @hour < 12 then '���͂悤'
    when @hour < 17 then '����ɂ���'
    else '����΂��'
  end

print @msg
