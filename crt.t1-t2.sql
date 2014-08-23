use sampleDB

DROP TABLE t1
CREATE TABLE t1 ( a int, b varchar(100) )
INSERT INTO t1 VALUES ( 1, 'AAA' ) ,( 2, 'BBB' ) ,( 3, 'CCC' ) ,( 4, 'DDD' )
SELECT * FROM t1

DROP TABLE t2
CREATE TABLE t2 ( a int, b varchar(100) )
INSERT INTO t2 VALUES ( 3, 'XXX' ) ,( 5, 'YYY' )
SELECT * FROM t2
