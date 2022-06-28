DELETE FROM Shohin;

CREATE VIEW ShohinSum (shohin_bunrui, cnt_shohin)
AS
SELECT shohin_bunrui, COUNT(*)
FROM Shohin
GROUP BY shohin_bunrui;

SELECT shohin_bunrui, cnt_shohin
FROM ShohinSum;

CREATE VIEW ShohinSumJim (shohin_bunrui, cnt_shohin)
AS
SELECT shohin_bunrui, cnt_shohin
FROM ShohinSum
WHERE shohin_bunrui = "事務用品";

SELECT shohin_bunrui, cnt_shohin
FROM ShohinSumJim;

CREATE VIEW ShohinJim (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi)
AS
SELECT *
FROM Shohin
WHERE shohin_bunrui = "事務用品";

INSERT INTO ShohinJim VALUES ("0009", "印鑑", "事務用品", 95, 10, "2009-11-30");

SELECT * FROM ShohinJim;

DROP VIEW ShohinSum;

SELECT shohin_bunrui, cnt_shohin
FROM (SELECT shohin_bunrui, COUNT(*) AS cnt_shohin FROM Shohin GROUP BY shohin_bunrui) AS ShohinSum;
