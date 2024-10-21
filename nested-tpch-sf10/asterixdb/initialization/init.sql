create dataverse ExternalFileDemo;
use dataverse ExternalFileDemo;

create type emptyType as {
};

create external dataset tpch10(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch-sf10/nestedcustomer.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset lineitem10(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch-sf10/nestedcustomer_2.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset customer10(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch-sf10/nestedcustomer_0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset orders10(emptyType)
using hdfs
(("path"="file:///path/to/data/nested-tpch-sf10/nestedcustomer_1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

