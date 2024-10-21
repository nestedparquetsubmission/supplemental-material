select
      first8.open_auctions_open_auction__id,
      first11.open_auctions_open_auction_bidder_increase,
      last11.open_auctions_open_auction_bidder_increase
from hive.xmark.x11 first11, hive.xmark.x8 first8, hive.xmark.x11 last11, hive.xmark.x8 last8
where first11._psk1 = first8._sk 
      and last11._psk1 = last8._sk
      and first8.open_auctions_open_auction__id = last8.open_auctions_open_auction__id
      and first11.open_auctions_open_auction_bidder_increase * 2 <= last11.open_auctions_open_auction_bidder_increase
      and first11._sk = ( select min(b11._sk) 
                                        from hive.xmark.x11 b11, hive.xmark.x8 b8
                                        where b11._psk1 = b8._sk and first8.open_auctions_open_auction__id = b8.open_auctions_open_auction__id )
      and last11._sk = ( select max(b11._sk) 
                                        from hive.xmark.x11 b11, hive.xmark.x8 b8
                                        where b11._psk1 = b8._sk and last8.open_auctions_open_auction__id = b8.open_auctions_open_auction__id );