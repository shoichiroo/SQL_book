SELECT COUNT(*) FROM Shohin;

SELECT SUM(hanbai_tanka) FROM Shohin;

SELECT SUM(hanbai_tanka), SUM(shiire_tanka) FROM Shohin;

SELECT AVG(hanbai_tanka) FROM Shohin;

SELECT AVG(hanbai_tanka), AVG(shiire_tanka) FROM Shohin;

SELECT MAX(hanbai_tanka), MIN(shiire_tanka) FROM Shohin;

SELECT COUNT(DISTINCT shohin_bunrui) FROM Shohin;

SELECT shohin_bunrui, COUNT(*) FROM Shohin GROUP BY shohin_bunrui;

SELECT shiire_tanka, COUNT(*) FROM Shohin GROUP BY shiire_tanka;

SELECT shiire_tanka, COUNT(*) FROM Shohin WHERE shohin_bunrui = "衣服" GROUP BY shiire_tanka;

SELECT shohin_bunrui, COUNT(*) FROM Shohin GROUP BY shohin_bunrui HAVING COUNT(*) = 2;

SELECT shohin_bunrui, AVG(hanbai_tanka) FROM Shohin GROUP BY shohin_bunrui HAVING AVG(hanbai_tanka) >= 2500;

SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka FROM Shohin ORDER BY hanbai_tanka, shohin_id;

SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka FROM Shohin ORDER BY shiire_tanka;

SELECT shohin_bunrui, COUNT(*) FROM Shohin GROUP BY shohin_bunrui ORDER BY COUNT(*);

SELECT shohin_bunrui, SUM(hanbai_tanka), SUM(shiire_tanka) FROM Shohin GROUP BY shohin_bunrui HAVING SUM(hanbai_tanka) > SUM(shiire_tanka) * 1.5;