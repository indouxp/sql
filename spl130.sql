-- SQL Server 2012 ���K�� No.�T Transact-SQL ����
-- SQL11_SelfLearning05_TSQL.pdf
-- case
declare @hour int = datepart(hour, getdate())
select
  case
    when @hour < 12 then '���͂�'
    when @hour < 19 then '����ɂ���'
    else '����΂��'
  end
