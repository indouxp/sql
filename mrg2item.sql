-- SQL Server 2012 ©K‘ƒVƒŠ[ƒY No.6
-- SQL11_SelfLearning06_TSQL2.pdf
--
-- bcp tsystem.dbo.tbl_item format nul -S .\sqlexpress -T -c -t "," -f .\test020.fmt
--
use tsystem

merge into tbl_item
  using openrowset (bulk 'd:\data\csv\test020.csv',
                    formatfile = 'd:\data\csv\test020.fmt') bulk1
  on tbl_item.item_code = bulk1.item_code
  when matched then
    update set
          tbl_item.item_name = bulk1.item_name,
          tbl_item.remark = bulk1.remark
  when not matched then
    insert values (bulk1.item_code, bulk1.item_name, bulk1.remark);

