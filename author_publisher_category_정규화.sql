-- insert into category_tb
select 
	distinct
    0,
    카테고리
from
	books;
    
# author(저자), publisher(출판사) 정규화
insert into author_tb
select
	distinct
    0,
    저자명
from
	books;
    
insert into publisher_tb
select
	distinct
    0,
    출판사
from
	books;
