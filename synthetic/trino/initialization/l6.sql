CREATE TABLE hive.generated.l6 ("a" bigint, "b" ARRAY(ROW("c" ARRAY(ROW("d" ARRAY(ROW("e" ARRAY(ROW("element" bigint, "f" ARRAY(ROW("element" bigint, "g" ARRAY(bigint))))), "element" bigint)), "element" bigint)), "element" bigint))) with (format = 'parquet');

CREATE TABLE hive.generated.l6_0 ("a" bigint, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l6_1 ("b-element" bigint, "_psk0" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l6_2 ("b-c-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l6_3 ("b-c-d-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l6_4 ("b-c-d-e-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_psk3" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l6_5 ("b-c-d-e-f-element" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_psk3" INTEGER, "_psk4" INTEGER, "_sk" INTEGER) with (format = 'parquet');
CREATE TABLE hive.generated.l6_6 ("b-c-d-e-f-g" bigint, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_psk3" INTEGER, "_psk4" INTEGER, "_psk5" INTEGER, "_sk" INTEGER) with (format = 'parquet');