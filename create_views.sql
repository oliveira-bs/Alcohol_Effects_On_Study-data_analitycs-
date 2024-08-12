use alcohol_students;

create or replace view vw_math_profile as
(select tms.id, tms.school , tms.sex , tms.age , tms.address , tmf.family_size , tt.travel_time, tmsl.reason 
from tb_math_student tms 
left join tb_math_family tmf 
on tms.family_id = tmf.id
left join tb_math_social_life tmsl 
on tms.social_life_id = tmsl.id
left join travel_times tt 
on tmsl.travel_times_id = tt.id);


create or replace view vw_math_family as
(select tms.id, tms.school, tms.sex, tms.age, tms.address, tmf.family_size , tmf.parents_cohabitation, 
me.mother_education, pe.father_education, tmf.mother_job , tmf.father_job , tmf.guardian , tmf.family_support , 
fr.family_relationship, tmg.g1_math , tmg.g2_math , tmg.g3_math, da.day_alcoh, wa.week_alcoh  
from tb_math_student tms 
left join tb_math_family tmf 
on tms.family_id = tmf.id
left join maternal_education me 
on tmf.maternal_education_id = me.id
left join paternal_education pe 
on tmf.paternal_education_id  = pe.id
left join family_relationships fr 
on tmf.family_relationships_id = fr.id
left join tb_math_grades tmg
on tms.grades_id = tmg.id
left join tb_math_alcohol_consume tmac 
on tms.alcohol_consume_id = tmac.id
left join days_alcoh da 
on tmac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tmac.weeks_alcoh_id = wa.id);


create or replace view vw_math_alcohol_performance as 
(select tms.school, tms.sex, tms.age, tms.address, tmsl.paid_math,
tmg.g1_math , tmg.g2_math , tmg.g3_math, da.day_alcoh, wa.week_alcoh 
from tb_math_student tms 
left join tb_math_social_life tmsl 
on tms.social_life_id = tmsl.id
left join travel_times tt 
on tmsl.travel_times_id = tt.id
left join study_times st 
on tmsl.study_times_id = st.id
left join free_times ft 
on tmsl.free_times_id = ft.id 
left join frequency_go_out fgo
on tmsl.frequency_go_out_id = fgo.id
left join healths h 
on tmsl.healths_id = h.id
left join tb_math_grades tmg
on tms.grades_id = tmg.id
left join tb_math_alcohol_consume tmac 
on tms.alcohol_consume_id = tmac.id
left join days_alcoh da 
on tmac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tmac.weeks_alcoh_id = wa.id);



create or replace view vw_math_alcohol_costumers as 
(select tms.school, tms.sex, tms.age, tms.address, st.study_time, 
fgo.go_out, tmg.g1_math , tmg.g2_math , tmg.g3_math, da.day_alcoh, wa.week_alcoh 
from tb_math_student tms 
left join tb_math_social_life tmsl 
on tms.social_life_id = tmsl.id
left join travel_times tt 
on tmsl.travel_times_id = tt.id
left join study_times st 
on tmsl.study_times_id = st.id
left join free_times ft 
on tmsl.free_times_id = ft.id 
left join frequency_go_out fgo
on tmsl.frequency_go_out_id = fgo.id
left join healths h 
on tmsl.healths_id = h.id
left join tb_math_grades tmg
on tms.grades_id = tmg.id
left join tb_math_alcohol_consume tmac 
on tms.alcohol_consume_id = tmac.id
left join days_alcoh da 
on tmac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tmac.weeks_alcoh_id = wa.id);


create or replace view vw_math_social_life as 
(select tms.school, tms.sex, tms.age, tms.address, tmsl.reason, tt.travel_time, st.study_time, tmsl.school_support, tmsl.family_support, 
tmsl.paid_math, tmsl.activies, tmsl.nursery, tmsl.higher, tmsl.internet, tmsl.romantic, ft.free_time, fgo.go_out, h.health,
tmg.g1_math , tmg.g2_math , tmg.g3_math, da.day_alcoh, wa.week_alcoh 
from tb_math_student tms 
left join tb_math_social_life tmsl 
on tms.social_life_id = tmsl.id
left join travel_times tt 
on tmsl.travel_times_id = tt.id
left join study_times st 
on tmsl.study_times_id = st.id
left join free_times ft 
on tmsl.free_times_id = ft.id 
left join frequency_go_out fgo
on tmsl.frequency_go_out_id = fgo.id
left join healths h 
on tmsl.healths_id = h.id
left join tb_math_grades tmg
on tms.grades_id = tmg.id
left join tb_math_alcohol_consume tmac 
on tms.alcohol_consume_id = tmac.id
left join days_alcoh da 
on tmac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tmac.weeks_alcoh_id = wa.id);



create or replace view vw_math_commitment as 
(select tms.school, tms.sex, tms.age, tms.address, tmc.failures, tmc.absences, tmsl.higher, st.study_time,
da.day_alcoh, wa.week_alcoh
from tb_math_student tms
left join tb_math_commitment tmc 
on tms.commitment_id = tmc.id
left join tb_math_social_life tmsl 
on tms.social_life_id = tmsl.id
left join study_times st 
on tmsl.study_times_id = st.id
left join tb_math_alcohol_consume tmac 
on tms.alcohol_consume_id = tmac.id
left join days_alcoh da 
on tmac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tmac.weeks_alcoh_id = wa.id);


-- ========== portuguese


create or replace view vw_portuguese_profile as
(select tps.id, tps.school , tps.sex , tps.age , tps.address , tpf.family_size , tt.travel_time, tpsl.reason 
from tb_portuguese_student tps 
left join tb_portuguese_family tpf 
on tps.family_id = tpf.id
left join tb_portuguese_social_life tpsl 
on tps.social_life_id = tpsl.id
left join travel_times tt 
on tpsl.travel_times_id = tt.id);




create or replace view vw_portuguese_family as
(select tps.id, tps.school, tps.sex, tps.age, tps.address, tpf.family_size , tpf.parents_cohabitation, 
me.mother_education, pe.father_education, tpf.mother_job , tpf.father_job , tpf.guardian , tpf.family_support , 
fr.family_relationship, tpg.g1_portuguese , tpg.g2_portuguese , tpg.g3_portuguese, da.day_alcoh, wa.week_alcoh  
from tb_portuguese_student tps 
left join tb_portuguese_family tpf 
on tps.family_id = tpf.id
left join maternal_education me 
on tpf.maternal_education_id = me.id
left join paternal_education pe 
on tpf.paternal_education_id  = pe.id
left join family_relationships fr 
on tpf.family_relationships_id = fr.id
left join tb_portuguese_grades tpg
on tps.grades_id = tpg.id
left join tb_portuguese_alcohol_consume tpac 
on tps.alcohol_consume_id = tpac.id
left join days_alcoh da 
on tpac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tpac.weeks_alcoh_id = wa.id);


create or replace view vw_portuguese_alcohol_performance as 
(select tps.school, tps.sex, tps.age, tps.address, tpsl.paid_portuguese,
tpg.g1_portuguese , tpg.g2_portuguese , tpg.g3_portuguese, da.day_alcoh, wa.week_alcoh 
from tb_portuguese_student tps 
left join tb_portuguese_social_life tpsl 
on tps.social_life_id = tpsl.id
left join travel_times tt 
on tpsl.travel_times_id = tt.id
left join study_times st 
on tpsl.study_times_id = st.id
left join free_times ft 
on tpsl.free_times_id = ft.id 
left join frequency_go_out fgo
on tpsl.frequency_go_out_id = fgo.id
left join healths h 
on tpsl.healths_id = h.id
left join tb_portuguese_grades tpg
on tps.grades_id = tpg.id
left join tb_portuguese_alcohol_consume tpac 
on tps.alcohol_consume_id = tpac.id
left join days_alcoh da 
on tpac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tpac.weeks_alcoh_id = wa.id);



create or replace view vw_portuguese_alcohol_costumers as 
(select tps.school, tps.sex, tps.age, tps.address, st.study_time, 
fgo.go_out, tpg.g1_portuguese , tpg.g2_portuguese , tpg.g3_portuguese, da.day_alcoh, wa.week_alcoh 
from tb_portuguese_student tps 
left join tb_portuguese_social_life tpsl 
on tps.social_life_id = tpsl.id
left join travel_times tt 
on tpsl.travel_times_id = tt.id
left join study_times st 
on tpsl.study_times_id = st.id
left join free_times ft 
on tpsl.free_times_id = ft.id 
left join frequency_go_out fgo
on tpsl.frequency_go_out_id = fgo.id
left join healths h 
on tpsl.healths_id = h.id
left join tb_portuguese_grades tpg
on tps.grades_id = tpg.id
left join tb_portuguese_alcohol_consume tpac 
on tps.alcohol_consume_id = tpac.id
left join days_alcoh da 
on tpac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tpac.weeks_alcoh_id = wa.id);


create or replace view vw_portuguese_social_life as 
(select tps.school, tps.sex, tps.age, tps.address, tpsl.reason, tt.travel_time, st.study_time, tpsl.school_support, tpsl.family_support, 
tpsl.paid_portuguese, tpsl.activies, tpsl.nursery, tpsl.higher, tpsl.internet, tpsl.romantic, ft.free_time, fgo.go_out, h.health,
tpg.g1_portuguese , tpg.g2_portuguese , tpg.g3_portuguese, da.day_alcoh, wa.week_alcoh 
from tb_portuguese_student tps 
left join tb_portuguese_social_life tpsl 
on tps.social_life_id = tpsl.id
left join travel_times tt 
on tpsl.travel_times_id = tt.id
left join study_times st 
on tpsl.study_times_id = st.id
left join free_times ft 
on tpsl.free_times_id = ft.id 
left join frequency_go_out fgo
on tpsl.frequency_go_out_id = fgo.id
left join healths h 
on tpsl.healths_id = h.id
left join tb_portuguese_grades tpg
on tps.grades_id = tpg.id
left join tb_portuguese_alcohol_consume tpac 
on tps.alcohol_consume_id = tpac.id
left join days_alcoh da 
on tpac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tpac.weeks_alcoh_id = wa.id);


create or replace view vw_portuguese_commitment as 
(select tps.school, tps.sex, tps.age, tps.address, tpc.failures, tpc.absences, tpsl.higher, st.study_time,
da.day_alcoh, wa.week_alcoh
from tb_portuguese_student tps
left join tb_portuguese_commitment tpc 
on tps.commitment_id = tpc.id
left join tb_portuguese_social_life tpsl 
on tps.social_life_id = tpsl.id
left join study_times st 
on tpsl.study_times_id = st.id
left join tb_portuguese_alcohol_consume tpac 
on tps.alcohol_consume_id = tpac.id
left join days_alcoh da 
on tpac.days_alcoh_id = da.id
left join weeks_alcoh wa 
on tpac.weeks_alcoh_id = wa.id);



-- alter table tb_portuguese_student 
-- rename column commital_id to commitment_id;
-- 
-- select * from tb_portuguese_student tps ;

