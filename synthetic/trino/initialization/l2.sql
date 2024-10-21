CREATE TABLE hive.generated.l2 ("a" bigint, "b" ARRAY(ROW("c" ARRAY(bigint), "element" bigint))) with (format = 'parquet');

CREATE TABLE hive.generated.l2_0 ("a" bigint, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l2_1 ("b-element" bigint, "_psk0" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l2_2 ("b-c" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_sk" INTEGER) with (format = 'parquet');