use tsystem
go

create table tsystem.dbo.tbl_item (
	item_code char(3) primary key not null,
	item_name nchar(30),
	remark ntext
)

go
