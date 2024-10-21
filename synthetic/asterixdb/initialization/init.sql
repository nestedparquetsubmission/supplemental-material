create dataverse ExternalFileDemo;
use dataverse ExternalFileDemo;

create type emptyType as {
};

create external dataset l0(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/l0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l1(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/l1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l2(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/l2.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l3(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/l3.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l4(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/l4.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l5(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/l5.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l6(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/l6.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l1_0(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l1_0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l1_1(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l1_1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l2_0(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l2_0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l2_1(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l2_1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l2_2(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l2_2.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l3_0(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l3_0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l3_1(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l3_1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l3_2(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l3_2.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l3_3(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l3_3.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l4_0(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l4_0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l4_1(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l4_1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l4_2(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l4_2.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l4_3(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l4_3.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l4_4(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l4_4.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l5_0(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l5_0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l5_1(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l5_1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l5_2(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l5_2.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l5_3(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l5_3.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l5_4(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l5_4.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l5_5(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l5_5.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l6_0(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l6_0.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l6_1(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l6_1.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l6_2(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l6_2.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l6_3(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l6_3.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l6_4(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l6_4.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l6_5(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l6_5.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));

create external dataset l6_6(emptyType)
using hdfs
(("path"="file:///path/to/data/generated/normalized/l6_6.parquet"),("input-format"="parquet-input-format"),("format" = "parquet"),("decimal-to-double" = "true"));
