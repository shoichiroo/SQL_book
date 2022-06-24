CREATE TABLE ShohinIns
(
  shohin_id CHAR(4) NOT NULL,
  shohin_mei VARCHAR(100) NOT NULL,
  shohin_bunrui VARCHAR(32) NOT NULL,
  hanbai_tanka INTEGER DEFAULT 0,
  shiire_tanka INTEGER,
  torokubi DATE,
  PRIMARY KEY (shohin_id)
);

INSERT INTO ShohinIns (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) VALUES ("0001", "Tシャツ", "衣服", 1000, 500, "2009-09-20");

INSERT INTO ShohinIns VALUES ("0005", "圧力鍋", "キッチン用品", 6800, 5000, "2009-01-15");

INSERT INTO ShohinIns VALUES ("0007", "おろしがね", "キッチン用品", DEFAULT, 790, "2009-04-28");

CREATE TABLE ShohinCopy
(
  shohin_id CHAR(4) NOT NULL,
  shohin_mei VARCHAR(100) NOT NULL,
  shohin_bunrui VARCHAR(32) NOT NULL,
  hanbai_tanka INTEGER DEFAULT 0,
  shiire_tanka INTEGER,
  torokubi DATE,
  PRIMARY KEY (shohin_id)
);

INSERT INTO ShohinCopy (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi FROM Shohin;

CREATE TABLE ShohinBunrui
(
  shohin_bunrui VARCHAR(32) NOT NULL,
  sum_hanbai_tanka INTEGER,
  sum_shiire_tanka INTEGER,
  PRIMARY KEY (shohin_bunrui)
);

INSERT INTO ShohinBunrui (shohin_bunrui, sum_hanbai_tanka, sum_shiire_tanka) SELECT shohin_bunrui, SUM(hanbai_tanka), SUM(shiire_tanka) FROM Shohin GROUP BY shohin_bunrui;

DELETE FROM Shohin;

DELETE FROM Shohin WHERE hanbai_tanka >= 4000;

UPDATE Shohin SET torokubi = "2009-10-10";

UPDATE Shohin SET hanbai_tanka = hanbai_tanka * 10 WHERE shohin_bunrui = "キッチン用品";

DELETE FROM Shohin WHERE shohin_id = "0005";

UPDATE Shohin SET torokubi = NULL WHERE shohin_id = "0008";

SELECT * FROM Shohin ORDER BY shohin_id;

UPDATE Shohin
SET hanbai_tanka = hanbai_tanka * 10,
    shiire_tanka = shiire_tanka / 2
WHERE shohin_bunrui = "キッチン用品";

START TRANSACTION;
UPDATE Shohin SET hanbai_tanka = hanbai_tanka - 1000 WHERE shohin_mei = "カッターシャツ";
UPDATE Shohin SET hanbai_tanka = hanbai_tanka + 1000 WHERE shohin_mei = "Tシャツ";
COMMIT;