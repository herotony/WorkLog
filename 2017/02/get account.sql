
select * from wowostore.bee_login_info b where b.real_id=408648 and b.type=0;

select * from wowostore.bee_login_info b where b.real_id=408648 and b.type=3;

select * from wowostore.sh_shop where shop_id=408648

select * from wowostore.sh_suppliers where suppliers_id	=1052846

select * from wowostore.bee_login_info where login_name = '18611106009'
--通过门店找到商户，再根据商户找登陆账号
select * from wowostore.sh_suppliers_shop where shop_id=408648