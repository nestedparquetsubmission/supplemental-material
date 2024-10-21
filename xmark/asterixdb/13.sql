select item.name, item.description.text
from Xmark as x unnest x.regions.australia.item as item;