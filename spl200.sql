-- SQL Server 2012 ���K�� No.�T Transact-SQL ����
-- SQL11_SelfLearning05_TSQL.pdf
-- �ƍ�����(�J�^�J�i�Ƃ��Ȃ���ʂ��Ȃ�) �T�[�o�[�ƍ�������'Japanese_CI_AS'�̏ꍇ
use sampleDB
select * from emp where empname like '%���J��'
go
-- �ƍ�����(�S�p�Ɣ��p����ʂ��Ȃ�) �T�[�o�[�ƍ�������'Japanese_CI_AS'�̏ꍇ
select * from emp where empname like '%ն�'
go
