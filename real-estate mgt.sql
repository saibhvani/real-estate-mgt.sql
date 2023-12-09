create table user.propertytype(
id int primary key auto_increment,
type varchar(25)not null,
description varchar(250)
);

create table user.property(
id int primary key auto_increment,
propertyid int,
name varchar(20),
dimensions varchar(20),
constraint foreign key property_propertytype_propertyid(propertyid)references user.property(id)
);

create table user.address(
id int primary key auto_increment,
street varchar(20),
landmark varchar(20),
state varchar(20),
country varchar(20),
pincode int
);

create table user.addressmapping(
id int primary key auto_increment,
propertyid int,
addressid int,
constraint foreign key addressmapping_address_propertyid(addressid)references user.address(id),
constraint foreign key addressmapping_address_addressid(propertyid)references user.property(id)
);

insert into user.propertytype(type,description)values('hstl','its nice');
insert into user.propertytype(type,description)values('hstl','its nice');
insert into user.propertytype(type,description)values('apt','its nice');

select *from user.propertytype;

insert into user.property(propertyid,name,dimensions)values(1,'singh nivas','1250sq');
insert into user.property(propertyid,name,dimensions)values(2,'ks','1100sq');
insert into user.property(propertyid,name,dimensions)values(3,'singh nivas','1150sq');

select *from user.property;

insert into user.address(street,landmark,state,country,pincode)values('kphb','next gen','telangana','india',506381);
insert into user.address(street,landmark,state,country,pincode)values('kphb','next gen','telangana','india',506381);
insert into user.address(street,landmark,state,country,pincode)values('lb nagar','metro','telangana','india',506381);

select *from user.address;

insert into user.addressmapping(propertyid,addressid)values(1,3);
insert into user.addressmapping(propertyid,addressid)values(2,1);
insert into user.addressmapping(propertyid,addressid)values(3,2);

select *from user.addressmapping;

select *from user.propertytype as prt
inner join user.property as pt on prt.id=pt.propertyid;

select *from user.propertytype as prt
inner join user.addressmapping as adm on prt.id=adm.propertyid;

select *from user.propertytype as prt
inner join user.addressmapping as adm on prt.id=adm.addressid;