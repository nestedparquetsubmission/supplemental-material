select item.name, item.description.text
from hive.xmark.dataset cross join unnest(regions.australia.item) as item;