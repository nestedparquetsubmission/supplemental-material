CREATE TABLE hive.generated.l1 ("a" bigint, "b" ARRAY(bigint)) with (format = 'parquet');

CREATE TABLE hive.generated.l1_0 ("a" bigint, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l1_1 ("b" bigint, "_psk0" INTEGER, "_sk" INTEGER) with (format = 'parquet');