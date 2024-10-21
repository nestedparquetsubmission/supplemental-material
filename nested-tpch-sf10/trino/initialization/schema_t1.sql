CREATE TABLE hive.tpch10.t1 ("c_orders-o_clerk" varchar, "c_orders-o_comment" varchar, "c_orders-o_custkey" bigint, "c_orders-o_orderdate" date, "c_orders-o_orderkey" bigint, "c_orders-o_orderpriority" varchar, "c_orders-o_orderstatus" varchar, "c_orders-o_shippriority" bigint, "c_orders-o_totalprice" decimal(12,2), "_psk0" INTEGER, "_sk" INTEGER) with (format = 'parquet');