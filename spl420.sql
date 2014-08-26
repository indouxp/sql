-- SQL Server 2012 自習書シリーズ No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- 再帰CTE
--
use sampleDB
go

WITH cte1 (社員番号, 社員名, 上司社員番号, 階層)
AS
(
  -- 上司
  SELECT
    社員番号, 社員名, 上司社員番号, 0
  FROM
    社員
  --WHERE
    --社員番号 = 1001

  UNION ALL

  -- 部下（再帰）
  SELECT
    e.社員番号, e.社員名, e.上司社員番号, cte1.階層 + 1
  FROM
    社員 AS e
  INNER JOIN
    cte1
  ON
    e.上司社員番号 = cte1.社員番号
)
SELECT * FROM cte1
