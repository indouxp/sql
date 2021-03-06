-- SQL Server 2012 ©KV[Y No.6
-- SQL11_SelfLearning06_TSQL2.pdf
-- ΔACTE
--
use sampleDB
go

WITH cte1 (ΠυΤ, ΠυΌ, γiΠυΤ, Kw)
AS
(
  -- γi
  SELECT
    ΠυΤ, ΠυΌ, γiΠυΤ, 0
  FROM
    Πυ
  --WHERE
    --ΠυΤ = 1001

  UNION ALL

  -- ΊiΔAj
  SELECT
    e.ΠυΤ, e.ΠυΌ, e.γiΠυΤ, cte1.Kw + 1
  FROM
    Πυ AS e
  INNER JOIN
    cte1
  ON
    e.γiΠυΤ = cte1.ΠυΤ
)
SELECT * FROM cte1
