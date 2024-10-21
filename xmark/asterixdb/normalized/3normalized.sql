with minis_and_maxis as (
      select min(b11._sk)  as min_sk, max(b11._sk) as max_sk, b8.open_auctions_open_auction__id
      from Xmark_11 b11, Xmark_8 b8
      where b11._psk1 = b8._sk
      group by b8._sk, b8.open_auctions_open_auction__id)

select
      first8.open_auctions_open_auction__id as a,
      first11.open_auctions_open_auction_bidder_increase firstinc,
      last11.open_auctions_open_auction_bidder_increase lastinc
from minis_and_maxis m, Xmark_11 first11, Xmark_11 last11, Xmark_8 first8, Xmark_8 last8
where m.min_sk = first11._sk and m.max_sk = last11._sk
      and first11._psk1 = first8._sk and last11._psk1 = last8._sk
      and first8.open_auctions_open_auction__id = last8.open_auctions_open_auction__id
      and first8.open_auctions_open_auction__id = m.open_auctions_open_auction__id
      and first11.open_auctions_open_auction_bidder_increase * 2 <= last11.open_auctions_open_auction_bidder_increase;