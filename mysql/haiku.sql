CREATE DATABASE haiku_db;
CREATE TABLE haiku_db.sakuhin_tbl(haiku VARCHAR(64), sakusya_id VARCHAR(10), kigo VARCHAR(2));
CREATE TABLE haiku_db.sakusya_tbl(sakusya_id VARCHAR(10), name VARCHAR(64));
INSERT INTO haiku_db.sakuhin_tbl (haiku, sakusya_id, kigo)
  VALUES ('五月雨を／集めてはやし／最上川', 'sakusya_01', '夏');
INSERT INTO haiku_db.sakuhin_tbl (haiku, sakusya_id, kigo)
  VALUES ('さらさらと／竹に音あり／夜の雪', 'sakusya_02', '冬');
INSERT INTO haiku_db.sakuhin_tbl (haiku, sakusya_id, kigo)
  VALUES ('しずかさや／岩にしみ入る／蝉の声', 'sakusya_01', '夏');
INSERT INTO haiku_db.sakuhin_tbl (haiku, sakusya_id, kigo)
  VALUES ('すずめの子／そこのけそこのけ／お馬が通る', 'sakusya_03', '春');
INSERT INTO haiku_db.sakuhin_tbl (haiku, sakusya_id, kigo)
  VALUES ('やせ蛙／負けるな一茶／これにあり', 'sakusya_03', '春');
INSERT INTO haiku_db.sakusya_tbl (sakusya_id, name)
  VALUES ('sakusya_01', '松尾芭蕉');
INSERT INTO haiku_db.sakusya_tbl (sakusya_id, name)
  VALUES ('sakusya_02', '正岡子規');
INSERT INTO haiku_db.sakusya_tbl (sakusya_id, name)
  VALUES ('sakusya_03', '小林一茶');
INSERT INTO haiku_db.sakusya_tbl (sakusya_id, name)
  VALUES ('sakusya_04', '与謝蕪村');

/*! 内部結合 */
SELECT haiku, kigo, sakusya_tbl.name FROM sakuhin_tbl INNER JOIN sakusya_tbl ON sakuhin_tbl.sakusya_id = sakusya_tbl.sakusya_id;
/*! 外部結合 */
SELECT haiku, kigo, sakusya_tbl.name FROM sakuhin_tbl LEFT JOIN sakusya_tbl ON sakuhin_tbl.sakusya_id = sakusya_tbl.sakusya_id;
SELECT haiku, kigo, sakusya_tbl.name FROM sakuhin_tbl RIGHT JOIN sakusya_tbl ON sakuhin_tbl.sakusya_id = sakusya_tbl.sakusya_id;
