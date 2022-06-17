CREATE TABLE Shohin
(
  shohin_id CHAR(4) NOT NULL,
  shohin_mei VARCHAR(100) NOT NULL,
  shohin_bunrui VARCHAR(32) NOT NULL,
  hanbai_tanka INTEGER,
  shiire_tanka INTEGER,
  torokubi DATE,
  PRIMARY KEY(shohin_id)
);

ALTER TABLE Shohin ADD COLUMN shohin_mei_kana VARCHAR(100);

ALTER TABLE Shohin DROP COLUMN shohin_mei_kana;

START TRANSACTION;
  INSERT INTO Shohin VALUES ("0001", "Tシャツ", "衣服", 1000, 500, "2009-09-20");
  INSERT INTO Shohin VALUES ("0002", "穴あけパンチ", "事務用品", 500, 320, "2009-09-11");
  INSERT INTO Shohin VALUES ("0003", "カッターシャツ", "衣服", 4000, 2800, NULL);
  INSERT INTO Shohin VALUES ("0004", "包丁", "キッチン用品", 3000, 2800, "2009-09-20");
  INSERT INTO Shohin VALUES ("0005", "圧力鍋", "キッチン用品", 6800, 5000, "2009-01-15");
  INSERT INTO Shohin VALUES ("0006", "フォーク", "キッチン用品", 500, NULL, "2009-09-20");
  INSERT INTO Shohin VALUES ("0007", "おろしがね", "キッチン用品", 880, 790, "2008-04-28");
  INSERT INTO Shohin VALUES ("0008", "ボールペン", "事務用品", 100, NULL, "2009-11-11");
COMMIT;

RENAME TABLE Shohin to Sohin;

CREATE TABLE Jyushoroku
(
  toroku_bango INTEGER NOT NULL,
  namae VARCHAR(128) NOT NULL,
  jyusho VARCHAR(256) NOT NULL,
  tel_no CHAR(10),
  mail_address CHAR(20),
  PRIMARY KEY(toroku_bango)
);

ALTER TABLE Jyushoroku ADD COLUMN yubin_bango CHAR(8) NOT NULL;

DROP TABLE Jyushoroku;