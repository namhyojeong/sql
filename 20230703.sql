select
menu_name
from tbl_menu;

select
menu_code,
menu_name,
menu_price
from tbl_menu;

select
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
from tbl_menu;

select
*
from tbl_menu;

select now();
select concat('홍', '길동') as 붙이기;

select
menu_code,
menu_name,
menu_price
from tbl_menu
order by menu_price asc;

select
menu_code,
menu_name,
menu_price
from tbl_menu
order by menu_price desc;

select
menu_code,
menu_name,
menu_price
from tbl_menu
order by menu_name desc,
menu_price asc;

select
menu_code,
menu_price,
menu_code * menu_price
from tbl_menu
order by menu_code * menu_price desc;

select field('A', 'A', 'B', 'C');

select field('B', 'A', 'B', 'C');

select 
	field(orderable_status, 'n', 'y'),
    orderable_status
from tbl_menu;

desc tbl_menu;

select
menu_name,
orderable_status
from tbl_menu
order by field(orderable_status, 'n', 'y');

select
category_code,
category_name,
ref_category_code
from tbl_category
order by ref_category_code; -- 오름차순 시 null값이 처음으로 default

select
category_code,
category_name,
ref_category_code
from tbl_category
order by ref_category_code is null; -- null 값이 마지막으로

select
category_code,
category_name,
ref_category_code
from tbl_category
order by ref_category_code desc; -- 내림차순시 null 값이 제일 마지막으로

select
category_code,
category_name,
ref_category_code
from tbl_category
order by ref_category_code is null desc; -- 내림차순시 null값이 처음으로

select
menu_name,
menu_price,
orderable_status
from tbl_menu
where orderable_status = 'y';

select
menu_name,
menu_price,
orderable_status
from tbl_menu
where menu_price = 13000;

select
    menu_code,
    menu_name, 
    orderable_status
from
    tbl_menu
where orderable_status != 'y';

select 
    menu_code,
    menu_name, 
    menu_price
from
    tbl_menu
where menu_price > 20000;

select 
    menu_code, 
    menu_name, 
    menu_price,
    category_code,
    orderable_status
from
    tbl_menu
where menu_price > 5000
and category_code = 10;

select 
    menu_code, 
    menu_name, 
    menu_price,
    category_code,
    orderable_status
from
    tbl_menu
where menu_price > 5000
or category_code = 10;

select 
    menu_code, 
    menu_name, 
    menu_price,
    category_code,
    orderable_status
from
    tbl_menu
where category_code = 4
or menu_price = 9000
and menu_code > 10;

select
menu_name,
menu_price,
category_code
from tbl_menu
where menu_price between 10000 and 25000
order by menu_price;

SELECT 
    menu_name, 
    menu_price, 
    category_code
FROM
    tbl_menu
WHERE
    menu_price NOT BETWEEN 10000 AND 25000
ORDER BY 
    menu_price;
    
select
menu_name,
menu_price
from tbl_menu
where menu_name like '%마늘%'
order by menu_name;

select
menu_name,
category_code
from tbl_menu
where category_code in (4, 5, 6)
order by category_code;

SELECT 
    category_code, 
    category_name, 
    ref_category_code
FROM
    tbl_category
WHERE ref_category_code is not null;

SELECT 
    DISTINCT category_code
FROM
    tbl_menu
ORDER BY 
    category_code;
    
select
a.menu_name,
b.category_name
from
tbl_menu a
join tbl_category b on a.category_code = b.category_code;

select
a.menu_name,
b.category_name
from tbl_menu a
inner join tbl_category b using (category_code);

select
a.category_name,
b.menu_name
from tbl_category a
left join tbl_menu b on a.category_code = b.category_code;

select
a.menu_name,
b.category_name
from tbl_menu a
right join tbl_category b on a.category_code = b.category_code;

select
a.menu_name,
b.category_name
from tbl_menu a
cross join tbl_category b;

select
a.category_name,
b.category_name
from tbl_category a
join tbl_category b on a.ref_category_code = b.category_code
where a.ref_category_code is not null;

select
a.menu_name,
b.category_name
from tbl_menu a
join tbl_category b on a.category_code = b.category_code;

insert into tbl_menu values (null, '바나나해장국', 8500, 4, 'y');

SELECT * FROM tbl_menu;