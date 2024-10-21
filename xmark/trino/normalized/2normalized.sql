-- Q2: Return the initial increases of all open auctions
select open_auctions_open_auction_bidder_increase
from hive.xmark.x11 a11, hive.xmark.x8 a8
where a11._psk1 = a8._sk and a11._sk = ( select min(b11._sk) 
                                        from hive.xmark.x11 b11, hive.xmark.x8 b8
                                        where b11._psk1 = b8._sk and a8.open_auctions_open_auction__id = b8.open_auctions_open_auction__id);