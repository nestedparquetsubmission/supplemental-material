CREATE TABLE hive.generated.l3 ("a" bigint, "b" ARRAY(ROW("c" ARRAY(ROW("d" ARRAY(bigint), "element" bigint)), "element" bigint))) with (format = 'parquet');

CREATE TABLE hive.generated.l3_0 ("a" bigint, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l3_1 ("b-element" bigint, "_psk0" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l3_2 ("b-c-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l3_3 ("b-c-d" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_sk" INTEGER) with (format = 'parquet');