create dataverse ExternalFileDemo;
use dataverse ExternalFileDemo;

create type emptyType as {
};

create external dataset Tpch(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch/nestedregion.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Region(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch/nestedregion_0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Nation(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch/nestedregion_1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Customer(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch/nestedregion_2.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Orders(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch/nestedregion_3.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Lineitem(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch/nestedregion_4.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));
