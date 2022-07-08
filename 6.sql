CREATE TABLE SampleMath(m NUMERIC (10, 3), n INTEGER, p INTEGER);

START TRANSACTION;
INSERT INTO SampleMath(m, n, p) VALUES (500, 0, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (-180, 0, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, NULL, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, 7, 3);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, 5, 2);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, 4, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (8, NULL, 3);
INSERT INTO SampleMath(m, n, p) VALUES (2.27, 1, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (5.555, 2, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, 1, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (8.76, NULL, NULL);
COMMIT;

SELECT m, ABS(m) AS abs_col FROM SampleMath;

SELECT n, p, MOD(n, p) AS mod_col FROM SampleMath;

SELECT m, n, ROUND(m, n) AS round_col FROM SampleMath;

CREATE TABLE SampleStr(str1 VARCHAR(40), str2 VARCHAR(40), str3 VARCHAR(40));

START TRANSACTION;
INSERT INTO SampleStr(str1, str2, str3) VALUES("あいう", "えお", NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES("abc", "def", NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES("山田", "太郎", "です");
INSERT INTO SampleStr(str1, str2, str3) VALUES("aaa", NULL, NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES(NULL, "あああ", NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES("@!#$%", NULL, NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES("ABC", NULL, NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES("aBC", NULL, NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES("abc太郎", "abc", "ABC");
INSERT INTO SampleStr(str1, str2, str3) VALUES("abcdefabc", "abc", "ABC");
INSERT INTO SampleStr(str1, str2, str3) VALUES("ミックマック", "ッ", "っ");
COMMIT

SELECT str1, str2, str3, CONCAT(str1, str2, str3) AS str_concat FROM SampleStr;

SELECT str1, LENGTH(str1) AS len_str FROM SampleStr;

SELECT str1, LOWER(str1) AS low_str FROM SampleStr WHERE str1 IN ("ABC", "aBC", "abc", "山田");

SELECT str1, str2, str3, REPLACE(str1, str2, str3) AS rep_str FROM SampleStr;

SELECT * FROM SampleStr;