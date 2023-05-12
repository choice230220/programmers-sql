-- 코드를 입력하세요
# select USER_ID, PRODUCT_ID,
# count(PRODUCT_ID) as count
# from ONLINE_SALE
# group by USER_ID, PRODUCT_ID;

select USER_ID, PRODUCT_ID
from (select USER_ID, PRODUCT_ID,
count(PRODUCT_ID) as count
from ONLINE_SALE
group by USER_ID, PRODUCT_ID) as c
where c.count >= 2
order by USER_ID, PRODUCT_ID desc;