-- SQL Server 2012 自習書 No.５ Transact-SQL 入門
-- SQL11_SelfLearning05_TSQL.pdf
-- 照合順序(カタカナとかなを区別しない) サーバー照合順序が'Japanese_CI_AS'の場合
use sampleDB
select * from emp where empname like '%ユカリ'
go
-- 照合順序(全角と半角を区別しない) サーバー照合順序が'Japanese_CI_AS'の場合
select * from emp where empname like '%ﾕｶﾘ'
go
