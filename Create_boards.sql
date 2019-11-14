Create database CentroDatosIA
go
use CentroDatosIA
go
--Crearemos las tablas--
Create table [general_conference]
(
 id_conference int not null primary key,
 name varchar(50) null,
 president varchar(50)  null,
 secretary varchar(50)  null,
 treasurer varchar(50)  null
)
go
Create table [divisions]
(
id_divisions int not null primary key,
id_conference int not null,
name varchar(50)  null,
president varchar(50)  null,
secretary varchar(50)  null,
treasurer varchar(50)  null,
)
go
Create table [unions]
(
id_unions int not null primary key,
id_divisions int not null,
name varchar(50)   null,
president varchar(50)  null,
secretary varchar(50)  null,
treasurer varchar(50)  null,
)
go
Create table [local_fiel]
(
id_local_fiel int not null primary key,
id_unions int not null,
name varchar(50)  null,
president varchar(50)  null,
secretary varchar(50)  null,
treasurer varchar(50)  null
)
go
Create table [churches]
(
id_churches int not null primary key,
id_local_fiel int not null,
name varchar(50)  null,
length varchar(50)  null,
latitude varchar(50)  null,
phone varchar(50)  null,
address varchar(100)  null
)
go
Create table [members]
(
 id_members int not null primary key,
 id_churches int not null,
 fname varchar(50)  null,
 sname varchar(50)  null,
 flastname varchar(50)  null,
 slastname varchar(50)  null,
 birthdate date  null,
 email varchar(50)  null,
 phone varchar(50)  null,
 address varchar(50)  null,
 sex varchar(50)  null
)
go
Create table [groups]
(
id_groups int not null primary key,
id_members int not null,
name varchar(50)  null,
leader varchar(50)  null,
associate_leader varchar(50)  null,
members_id int not null,
members_churches_local_field_id int  null,
length varchar(50)  null,
latitude varchar(50)  null
)
go
Create table [general]
(
id_general int not null primary key,
id_groups int not null,
id_churches int not null,
bautimos varchar(50)  null,
bells varchar(50)  null,
project varchar(50)  null,
date varchar(50)  null
)
go
Create table [assistance]
(
id_assistance int not null primary key,
id_members int not null,
id_groups int not null,
id_visits int not null,
date varchar(50)  null,
time varchar(50)  null
)
go
Create table [visits]
(
id_visits int not null primary key,
id_assistance int not null,
id_groups int not null,
fname varchar(50)  null,
sname varchar(50)  null,
flastname varchar(50)  null,
slastname varchar(50)  null,
phone varchar(50)  null,
email varchar(50)  null,
location varchar(50)  null
)
go
Create table [activities]
(
id_activities int not null primary key,
name varchar(50)  null
)
go
Create table [assists_has_activities]
(
id_assists_has_activities int primary key,
id_activities int not null,
id_assistance int not null,
activity int not null
)
go
Create table [users]
(
id_users int not null primary key,
email varchar(50) not null,
password varchar(50) not null
)
go
--Foreign key--

alter table [divisions]add
constraint [FK_conference_divisions]
foreign key (id_conference)
references [general_conference](id_conference)
go
alter table [unions]add
constraint [FK_divisions_unions]
foreign key(id_divisions)
references[divisions](id_divisions)
go
alter table [local_fiel]add
constraint[FK_unions_local_fiel]
foreign key (id_unions)
references[unions](id_unions)
go
alter table [churches]add
constraint[FK_local_fiel_churches]
foreign key (id_local_fiel)
references[local_fiel] (id_local_fiel)
go
alter table [members]add
constraint [FK_churches_members]
foreign key (id_churches)
references[churches](id_churches)
go
alter table [assistance]add
constraint[FK_members_assistance]
foreign key (id_members)
references[members](id_members)
go
alter table [groups]add
constraint [FK_members_groups]
foreign key (id_members)
references[members](id_members)
go
alter table [assistance]add
constraint [FK_groups_assistance]
foreign key (id_groups)
references[groups](id_groups)
go
alter table [assistance]add
constraint [FK_assistance_members]
foreign key (id_members)
references[members](id_members)
go
alter table [assistance]add
constraint [FK_assistance_visits]
foreign key (id_visits)
references[visits](id_visits)
go
alter table [assists_has_activities]add
constraint[FK_assists_has_activies_assistance]
foreign key (id_assistance)
references [assistance] (id_assistance)
go
alter table [assists_has_activities]add
constraint[FK_assists_has_activities_activities]
foreign key (id_activities)
references[activities](id_activities)
go
alter table [general]add
constraint[FK_general_groups]
foreign key (id_groups)
references [groups] (id_groups)
go
alter table [general]add
constraint[FK_general_churches]
foreign key (id_churches)
references [churches] (id_churches)
go



