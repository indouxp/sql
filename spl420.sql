-- SQL Server 2012 ���K���V���[�Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- �ċACTE
--
use sampleDB
go

WITH cte1 (�Ј��ԍ�, �Ј���, ��i�Ј��ԍ�, �K�w)
AS
(
  -- ��i
  SELECT
    �Ј��ԍ�, �Ј���, ��i�Ј��ԍ�, 0
  FROM
    �Ј�
  --WHERE
    --�Ј��ԍ� = 1001

  UNION ALL

  -- �����i�ċA�j
  SELECT
    e.�Ј��ԍ�, e.�Ј���, e.��i�Ј��ԍ�, cte1.�K�w + 1
  FROM
    �Ј� AS e
  INNER JOIN
    cte1
  ON
    e.��i�Ј��ԍ� = cte1.�Ј��ԍ�
)
SELECT * FROM cte1
