-- SQL Server 2012 ���K�� No.�T Transact-SQL ����
-- SQL11_SelfLearning05_TSQL.pdf
-- IF �L�[���[�h�ɂ���������
declare @x int
set @x = datepart(hour, getdate())
if @x < 12
  begin
    print '���͂悤'
  end
else
  if @x < 18
    begin
      print '����ɂ���'
    end
  else
    begin
      print '����΂��'
    end
