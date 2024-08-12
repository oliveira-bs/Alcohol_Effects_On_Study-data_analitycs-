-- SELECT * FROM alcohol_students.maths;

-- Delete table if exists maternal_education;
drop table if exists maternal_education;

-- Create table maternal_education
create table if not exists maternal_education(
	id integer not null,
	mother_education varchar(30),
	primary key (id)
);

-- Insert values into table maternal_education
insert into maternal_education
(id, mother_education) values (0, 'none'), (1, 'primary education'), (2, '5th to 9th grade'), (3, 'secondary education'), (4, 'higher education');



-- Delete table if exists paternal_education;
drop table if exists paternal_education;

-- Create table paternal_education
create table if not exists paternal_education(
	id integer not null,
	father_education varchar(30),
	primary key (id)
)  ;

-- Insert values into table paternal_education
insert into paternal_education
(id, father_education) values (0, 'none'), (1, 'primary education'), (2, '5th to 9th grade'), (3, 'secondary education'), (4, 'higher education');



-- Delete table if exists travel_times;
drop table if exists travel_times;

-- Create table travel_times
create table if not exists travel_times(
	id integer not null auto_increment,
	travel_time varchar(30),
	primary key (id)
);

-- Insert values into table study_times
insert into travel_times
(travel_time) values ('<15 min'), ('15 to 30 min'), ('30 min. to 1 hour'), ('>1 hour');



-- Delete table if exists study_times;
drop table if exists study_times;

-- Create table study_times
create table if not exists study_times(
	id integer not null auto_increment,
	study_time varchar(30),
	primary key (id)
);

-- Insert values into table study_times
insert into study_times
(study_time) values ('<2 hours'), ('2 to 5 hours'), ('5 to 10 hours'), ('>10 hours');



-- Delete table if exists family_relationships;
drop table if exists family_relationships;

-- Create table family_relationships
create table if not exists family_relationships(
	id integer not null auto_increment,
	family_relationship varchar(30),
	primary key (id)
);

-- Insert values into table family_relationships
insert into family_relationships
(family_relationship) values ('very bad'), ('bad'), ('neutro'), ('good'), ('excellent');



-- Delete table if exists free_times;
drop table if exists free_times;

-- Create table free_times
create table if not exists free_times(
	id integer not null auto_increment,
	free_time varchar(30),
	primary key (id)
);

-- Insert values into table free_times
insert into free_times
(free_time) values ('very low'), ('low'), ('moderate'), ('high'), ('very high');



-- Delete table if exists frequency_go_out;
drop table if exists frequency_go_out;

-- Create table frequency_go_out
create table if not exists frequency_go_out(
	id integer not null auto_increment,
	go_out varchar(30),
	primary key (id)
);

-- Insert values into table frequency_go_out
insert into frequency_go_out
(go_out) values ('very low'), ('low'), ('moderate'), ('high'), ('very high');



-- Delete table if exists days_alcoh;
drop table if exists days_alcoh;

-- Create table days_alcoh
create table if not exists days_alcoh(
	id integer not null auto_increment,
	day_alcoh varchar(30),
	primary key (id)
);

-- Insert values into table days_alcoh
insert into days_alcoh
(day_alcoh) values ('very low'), ('low'), ('moderate'), ('high'), ('very high');



-- Delete table if exists weeks_alcoh;
drop table if exists weeks_alcoh;

-- Create table weeks_alcoh
create table if not exists weeks_alcoh(
	id integer not null auto_increment,
	week_alcoh varchar(30),
	primary key (id)
);

-- Insert values into table weeks_alcoh
insert into weeks_alcoh
(week_alcoh) values ('very low'), ('low'), ('moderate'), ('high'), ('very high');



-- Delete table if exists healths;
drop table if exists healths;

-- Create table healths
create table if not exists healths(
	id integer not null auto_increment,
	health varchar(30),
	primary key (id)
);

-- Insert values into table healths
insert into healths
(health) values ('very bad'), ('bad'), ('moderate'), ('good'), ('very good');


-- alter table maths add id int not null auto_increment primary key first;

-- alter table portuguese add id int not null auto_increment primary key first;

SHOW COLUMNS FROM maths;

-- Insert distinct values ​​from the sex column in the math table into the sex_type table
-- insert into sex_type (sex_id)
-- select distinct sex 
-- from alcohol_students.maths;

-- insert into sex_type (sex_id, sex_name) values ('F', 'female'), ('M', 'male');

-- SELECT * FROM alcohol_students.sex_type;
-- Delete table if exists travel_times;

