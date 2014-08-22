-- SQL Server 2012 ©K‘ No.‚T Transact-SQL “ü–å
-- SQL11_SelfLearning05_TSQL.pdf
-- while
declare @i int
set @i = 1
while  @i < 10
  begin
    print @i
    set @i = @i + 1
  end
