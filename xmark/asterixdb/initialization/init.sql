create dataverse ExternalFileDemo;
use dataverse ExternalFileDemo;

create type emptyType as {
};

create external dataset Xmark(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark1(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf11.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_11(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_11.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_12(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_12.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_14(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_14.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_18(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_18.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_22(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_22.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_26(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_26.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_30(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_30.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_34(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_34.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_5(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_5.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset Xmark_8(emptyType)
using hdfs
(("path"="file:///path/to/data/xmark/sf10_8.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));
