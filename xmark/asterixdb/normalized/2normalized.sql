-- Q2: Return the initial increases of all open auctions
with minis as (
select min(b11._sk)  as _sk, b8.open_auctions_open_auction__id
                                        from Xmark_11 b11, Xmark_8 b8
                                        where b11._psk1 = b8._sk
group by b8._sk, b8.open_auctions_open_auction__id)

select a11.open_auctions_open_auction_bidder_increase
from minis m, Xmark_11 a11, Xmark_8 a8
where m._sk =  a11._sk and a8._sk = a11._psk1 and a8.open_auctions_open_auction__id = m.open_auctions_open_auction__id;