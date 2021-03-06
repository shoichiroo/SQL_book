SELECT shohin_id, shohin_mei, shiire_tanka FROM Shohin;

SELECT * FROM Shohin;

SELECT shohin_id AS id, shohin_mei AS namae, shiire_tanka AS tanka FROM Shohin;

SELECT "商品" AS mojiretsu, 38 AS kazu, "2009-02-24" AS hizuke, shohin_id, shohin_mei FROM Shohin;

SELECT DISTINCT shohin_bunrui FROM Shohin;

SELECT DISTINCT shiire_tanka FROM Shohin;

SELECT DISTINCT shohin_bunrui, torokubi FROM Shohin;

SELECT shohin_mei, shohin_bunrui FROM Shohin WHERE shohin_bunrui = "衣服";

SELECT shohin_mei FROM Shohin WHERE shohin_bunrui = "衣服";

SELECT shohin_mei, hanbai_tanka, hanbai_tanka * 2 AS "hanbai_tanka_x2" FROM Shohin;

SELECT shohin_mei, shohin_bunrui FROM Shohin WHERE hanbai_tanka = 500;

SELECT shohin_mei, shohin_bunrui FROM Shohin WHERE hanbai_tanka != 500;

SELECT shohin_mei, hanbai_tanka, shiire_tanka FROM Shohin WHERE hanbai_tanka - shiire_tanka >= 500;

CREATE TABLE Chars (chr CHAR(3) NOT NULL, PRIMARY KEY (chr));

START TRANSACTION;
  INSERT INTO Chars VALUES ("1");
  INSERT INTO Chars VALUES ("2");
  INSERT INTO Chars VALUES ("3");
  INSERT INTO Chars VALUES ("10");
  INSERT INTO Chars VALUES ("11");
  INSERT INTO Chars VALUES ("222");
COMMIT;

SELECT * FROM Chars;

SELECT * FROM Chars WHERE chr > "2";

SELECT shohin_mei, shiire_tanka FROM Shohin WHERE shiire_tanka IS NULL;

SELECT shohin_mei, shiire_tanka FROM Shohin WHERE shiire_tanka IS NOT NULL;

SELECT shohin_mei, shiire_tanka FROM Shohin WHERE shohin_bunrui = "キッチン用品" AND hanbai_tanka >= 3000;

SELECT shohin_mei, shiire_tanka FROM Shohin WHERE shohin_bunrui = "キッチン用品" OR hanbai_tanka >= 3000;

SELECT shohin_mei, torokubi FROM Shohin WHERE torokubi >= "2009-04-28";

SELECT shohin_mei, shohin_bunrui, hanbai_tanka * 0.9 - shiire_tanka AS rieki FROM Shohin WHERE shohin_bunrui = "事務用品" OR shohin_bunrui = "キッチン用品";