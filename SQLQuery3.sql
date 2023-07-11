create table ride_details(
ride_id varchar(20) NOT NULL,
sailor_id varchar(20) ,
boat_id varchar(20),
DOT date,
shift varchar(20),
No_passengers int,
primary key (ride_id),
);

alter table ride_details add constraint fk_constraint_sailor
foreign key(sailor_id)
references sailor_details(sailor_id)

--boat table
create table boat_details(
boat_id varchar(20) not null,
boat_name varchar(20),
boat_type varchar(20),
seat_capacity int,
primary key (boat_id)
);

alter table ride_details add constraint fk_constraint_boat
foreign key(boat_id)
references boat_details(boat_id)

--sailor table

create table sailor_details(
sailor_id varchar(20) not null,
sailor_name varchar(20),
phone_no bigint,
address varchar(20),
doj date,
primary key (sailor_id)
);



alter table ride_details add constraint fk_constraint_sailor
foreign key(sailor_id)
references sailor_details(sailor_id)

 

alter table ride_details add constraint fk_constraint_boat
foreign key(boat_id)
references boat_details(boat_id)


select sailor_id,sailor_name,phone_no from sailor_details order by DOJ;

select sailor_id,sailor_name,phone_no from sailor_details order by sailor_name DESC;

select * from (select sailor_id,sailor_name,phone_no,DOJ as TotalExperience from sailor_details)
AS subquery
order by TotalExperience,
sailor_name desc;

 

