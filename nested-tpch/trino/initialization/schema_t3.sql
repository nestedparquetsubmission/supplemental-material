CREATE TABLE hive.tpch.t3 ("r_nations-n_customers-c_orders-o_clerk" varchar, "r_nations-n_customers-c_orders-o_comment" varchar, "r_nations-n_customers-c_orders-o_custkey" bigint, "r_nations-n_customers-c_orders-o_orderdate" timestamp, "r_nations-n_customers-c_orders-o_orderkey" bigint, "r_nations-n_customers-c_orders-o_orderpriority" varchar, "r_nations-n_customers-c_orders-o_orderstatus" varchar, "r_nations-n_customers-c_orders-o_shippriority" bigint, "r_nations-n_customers-c_orders-o_totalprice" double, "_psk0" INTEGER, "_psk1" INTEGER, "_psk2" INTEGER, "_sk" INTEGER) with (format = 'parquet');