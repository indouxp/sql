-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- merge merge�X�e�[�g�����g��;�ŏI���K�v������
use sampleDB
select * from t1 order by a

MERGE INTO t1
      USING t2
        ON t1.a = t2.a
      WHEN MATCHED THEN
        UPDATE SET t1.b = t2.b
      WHEN NOT MATCHED THEN
        INSERT VALUES ( t2.a, t2.b );

select * from t1 order by a
