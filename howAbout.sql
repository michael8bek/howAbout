use test;
select * from cart;
select * from member;
select * from goods;
select * from grade;

select * from cart where cart_state='y' and mem_id='jeagong';

delete from member where mem_name='jeongjeagong';

select * from cart order by cart_id

update cart set cart_state='n' where cart_id='2';

select * from cart;
alter table cart modify column goods_qty int(5);
update cart set goods_qty =1 where cart_id=5;
update goods set goods_delprice = 2500;