# select

select
	*
from
	student_tb;
    
select
	student_name,
    student_year
from
	student_tb;
    
# where조건
select
	*
from
	student_tb
where
-- 	student_year = 3 or student_year = 4;
--     student_year in(3, 4);
--     student_year > 2 and student_year < 5;
--     student_year >= 3 and student_year <= 4;
    student_id between 3 and 4;
    

select 
	10 as num,
    20 as num2,
    30 as name
union all
select
    10 as num,
    20 as num2,
    '이름' as name;

select
	1 as id,
    '월' as day
union all
select
	2 as id,
    '화' as day
union all
select
	3 as id,
    '수' as day;

select
	row_number() over(order by name) as `index`,
	name
from
	(select
		student_name as name
	from
		student_tb
	union
	select
		instructor_name
	from
		instructor_tb) as name_tb;
    

select
	row_number() over(order by student_name) as num,
	student_name
from
	student_tb;

select
	*
from
	student_tb
order by
	student_year desc,
    student_name;

select
	dense_rank() over(order by `id`) as num,
	name_tb.*
from
	(select
		course_id as `id`,
		course_name as `name`
	from
		course_tb
	union
	select
		major_id,
		major_name
	from
		major_tb) as name_tb;
        
        
# where 와일드 카드(like)
select
	*
from
	instructor_tb
where
	instructor_name like '_교_';
    

    
    






