-- SQL Server 2012 ���K�� No.�T Transact-SQL ����
-- SQL11_SelfLearning05_TSQL.pdf
-- �ƍ�����(�啶���Ə���������ʂ��Ȃ�) �T�[�o�[�ƍ�������'Japanese_CI_AS'�̏ꍇ
use sampleDB
select * from emp where empname = 'Geof Cruise'
select * from emp where empname = 'GEOF CRUISE'
select * from emp where empname = '�f�d�n�e�@�b�q�t�h�r�d'
go
