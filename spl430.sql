-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- HierarchyID �f�[�^�^
--
use sampleDB
go
WITH cte1 (path, �Ј��ԍ�, �Ј���, ��i�Ј��ԍ�, �K�w)
AS
(
  -- ��i
  SELECT
    HierarchyID::GetRoot() AS root, �Ј��ԍ�, �Ј���, ��i�Ј��ԍ�, 0
  FROM
    �Ј�
  WHERE
     �Ј��ԍ� = 1001
  UNION ALL
  -- �����i�ċA�j
  SELECT
    CAST( cte1.path.ToString() + CAST(e.�Ј��ԍ� AS varchar(30)) + '/' AS HierarchyID ),
    e.�Ј��ԍ�, e.�Ј���, e.��i�Ј��ԍ�, cte1.�K�w+ 1
  FROM
    �Ј� AS e
  INNER JOIN cte1
  ON e.��i�Ј��ԍ� = cte1.�Ј��ԍ�
)
SELECT path.ToString(), * FROM cte1
