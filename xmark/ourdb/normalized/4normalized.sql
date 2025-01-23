-- Q4: List the reserves of those open auctions where a certain person issued a bid before another person.
select a11.open_auctions_open_auction_bidder_personref__person, a8.open_auctions_open_auction_reserve
from ourdb.parquetview('sf10_11.parquet') a11, ourdb.parquetview('sf10_8.parquet') a8, ourdb.parquetview('sf10_11.parquet') b11, ourdb.parquetview('sf10_8.parquet') b8
where a8._sk = a11._psk1 
    and b8._sk = b11._psk1 
    and a11.open_auctions_open_auction_bidder_personref__person = 'person20'
    and b11.open_auctions_open_auction_bidder_personref__person = 'person51'
    and a8.open_auctions_open_auction__id = b8.open_auctions_open_auction__id
    and a11._sk < b11._sk