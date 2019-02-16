/*
  削除用SQL
*/
DROP TABLE IF EXISTS `test`;

/*
  テーブル作成用SQL
*/
CREATE TABLE IF NOT EXISTS `test`
(
  id int not null primary key,
  name varchar(20)
);

/*
  初期データ投入用SQL
*/
INSERT INTO `test` VALUES (1, 'TEST-NAME');