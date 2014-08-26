use sampleDB
CREATE TABLE 社員(
  社員番号      int NOT NULL PRIMARY KEY,
  社員名        varchar(40) NULL,
  上司社員番号  int NULL,
  性別          char(4) NULL
)
INSERT INTO 社員 VALUES (1001, '山田 太郎', NULL, '男性')
INSERT INTO 社員 VALUES (1002, '鈴木 一郎', NULL, '男性')
INSERT INTO 社員 VALUES (1003, '伊藤 朋子', 1001, '女性')
INSERT INTO 社員 VALUES (1004, '若旅 素子', 1002, '女性')
INSERT INTO 社員 VALUES (1005, '佐藤 啓太', 1001, '男性')
INSERT INTO 社員 VALUES (1006, '川崎 太郎', 1003, '男性')
