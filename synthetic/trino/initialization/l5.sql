CREATE TABLE hive.generated.l5 ("a" bigint, "b" ARRAY(ROW("c" ARRAY(ROW("d" ARRAY(ROW("e" ARRAY(ROW("element" bigint, "f" ARRAY(bigint))), "element" bigint)), "element" bigint)), "element" bigint))) with (format = 'parquet');

CREATE TABLE hive.generated.l5_0 ("a" bigint, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l5_1 ("b-element" bigint, "_psk0" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l5_2 ("b-c-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l5_3 ("b-c-d-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l5_4 ("b-c-d-e-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_psk3" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l5_5 ("b-c-d-e-f" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_psk3" INTEGER, "_psk4" INTEGER, "_sk" INTEGER) with (format = 'parquet');