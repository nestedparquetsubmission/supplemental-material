create dataverse ExternalFileDemo;
use dataverse ExternalFileDemo;

create type emptyType as {
};

create external dataset Dblp(emptyType)
using hdfs
(("path"="file:///path/to/data/dblp/dblp.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

drop dataset Dblp;

create external dataset Dblp_0(emptyType)
using hdfs
(("path"="file:///path/to/data/dblp/dblp0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Dblp_1(emptyType)
using hdfs
(("path"="file:///path/to/data/dblp/dblp1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));
