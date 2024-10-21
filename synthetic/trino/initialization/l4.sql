CREATE TABLE hive.generated.l4 ("a" bigint, "b" ARRAY(ROW("c" ARRAY(ROW("d" ARRAY(ROW("e" ARRAY(bigint), "element" bigint)), "element" bigint)), "element" bigint))) with (format = 'parquet');

CREATE TABLE hive.generated.l4_0 ("a" bigint, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l4_1 ("b-element" bigint, "_psk0" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l4_2 ("b-c-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l4_3 ("b-c-d-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l4_4 ("b-c-d-e" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_psk3" INTEGER, "_sk" INTEGER) with (format = 'parquet');