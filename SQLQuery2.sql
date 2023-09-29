create database bai5
go
use bai5
go
create table areas(
id int not null primary key,
name nvarchar(255)
)
go 
create table customer(
id int,
name nvarchar(255),
id_area int
)
go 
insert into areas values(1,'Bac')
 insert into areas values(2,'Trung')
 insert into areas values(3,'Tay Nguyen')
insert into areas values(4,'Dong Nam')
 insert into areas values(5,'Tay Nam')
go 
insert into customer values (1,'Nguyen Van A',1)
insert into customer values (2,'Nguyen Van B',2)
insert into customer values (3,'Nguyen Van A',2)
insert into customer values (4,'Nguyen Van A',3)
insert into customer values (5,'Nguyen Van A',5)
insert into customer values (6,'Nguyen Van A',4)
insert into customer values (7,'Nguyen Van A',5)
alter table customer add constraint fk_cus_id foreign key(id_area) references areas (id);
