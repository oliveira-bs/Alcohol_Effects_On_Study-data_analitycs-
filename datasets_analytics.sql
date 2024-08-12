-- Delete table if exists portuguese_grades;
drop table if exists portuguese_grades;

-- Create table portuguese_grades;
create table portuguese_grades as
select school, sex, age, address, famsize as family_size,
Pstatus as parents_cohabitation, me.mother_education, 
pe.father_education , Mjob as mother_job, 
Fjob as father_job, reason, guardian, tt.travel_time, 
st.study_time , failures, schoolsup as school_support, 
famsup as family_support, paid as paid_portuguese, activities, nursery, 
higher, internet, romantic, fr.family_relationship, 
ft.free_time, fgo.go_out, da.day_alcoh, 
wa.week_alcoh, h.health, absences, G1 as g1_portuguese, 
G2 as g2_portuguese, G3 as g3_portuguese
from portuguese as p
left join travel_times as tt 
on p.traveltime = tt.id
left join maternal_education as me
on p.Medu = me.id
left join paternal_education as pe
on p.Fedu  = pe.id
left join study_times as st
on p.studytime = st.id
left join family_relationships as fr
on p.famrel = fr.id
left join free_times as ft
on p.freetime = ft.id
left join frequency_go_out as fgo
on p.goout = fgo.id
left join days_alcoh as da
on p.Dalc = da.id
left join weeks_alcoh as wa
on p.Walc = wa.id
left join healths as h
on p.health = h.id;

-- Insert column id in table portuguese_grades;
alter table portuguese_grades 
add id INT primary key auto_increment first;



-- Delete table if exists math_grades;
drop table if exists math_grades;

-- Create table math_grades;
create table math_grades as
select school, sex, age, address, famsize as family_size,
Pstatus as parents_cohabitation, me.mother_education, 
pe.father_education , Mjob as mother_job, 
Fjob as father_job, reason, guardian, tt.travel_time, 
st.study_time , failures, schoolsup as school_support, 
famsup as family_support, paid as paid_math, activities, nursery, 
higher, internet, romantic, fr.family_relationship, 
ft.free_time, fgo.go_out, da.day_alcoh, 
wa.week_alcoh, h.health, absences, G1 as g1_math, 
G2 as g2_math, G3 as g3_math
from maths as m
left join travel_times as tt 
on m.traveltime = tt.id
left join maternal_education as me
on m.Medu = me.id
left join paternal_education as pe
on m.Fedu  = pe.id
left join study_times as st
on m.studytime = st.id
left join family_relationships as fr
on m.famrel = fr.id
left join free_times as ft
on m.freetime = ft.id
left join frequency_go_out as fgo
on m.goout = fgo.id
left join days_alcoh as da
on m.Dalc = da.id
left join weeks_alcoh as wa
on m.Walc = wa.id
left join healths as h
on m.health = h.id;

-- Insert column id in table math_grades;
alter table math_grades 
add id INT primary key auto_increment first;



