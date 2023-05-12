-- 코드를 입력하세요
SELECT i.FLAVOR from ICECREAM_INFO as i
inner join FIRST_HALF as f
on i.FLAVOR = f.FLAVOR
where i.INGREDIENT_TYPE = 'fruit_based' and f.TOTAL_ORDER > 3000
order by TOTAL_ORDER desc;