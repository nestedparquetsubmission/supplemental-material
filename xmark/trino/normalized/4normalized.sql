-- Q4: List the reserves of those open auctions where a certain person issued a bid before another person.
select a11.open_auctions_open_auction_bidder_personref__person, a8.open_auctions_open_auction_reserve
from hive.xmark.x11 a11, hive.xmark.x8 a8, hive.xmark.x11 b11, hive.xmark.x8 b8
where a8._sk = a11._psk1 
    and b8._sk = b11._psk1 
    and a11.open_auctions_open_auction_bidder_personref__person = 'person20'
    and b11.open_auctions_open_auction_bidder_personref__person = 'person51'
    and a8.open_auctions_open_auction__id = b8.open_auctions_open_auction__id
    and a11._sk < b11._sk;