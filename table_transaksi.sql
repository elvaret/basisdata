--master data--
create table transaksi(
    id_transaksi int not null auto_increment,
    id_products varchar(10) not null,
    id_customers varchar(10) not null,
    created_at datetime,
    keterangan varchar(100),
    primary key (id_transaksi)
)engine=InnoDB;

describe transaksi;
insert into transaksi(id_products, id_customers,created_at, keterangan) values
('P1111','C1111',"2021-06-10 08:18:17","lunas"),
('P1112','C1112',"2021-06-15 10:13:12","lunas"),
('P1113','C1113',"2021-06-17 12:18:15","lunas"),
('P1114','C1114',"2021-07-19 09:18:2","Belum lunas"),
('P1115','C1115',"2021-07-25 09:14:17","lunas"),
('P1116','C1116',"2021-07-03 08:20:40","lunas"),
('P3112','C1117',"2021-09-15 14:18:17","Belum lunas"),
('P2112','C1118',"2021-09-28 15:15:30","lunas");

insert into transaksi(id_products) values
('P1119'),
('P3111');

show create table transaksi;
drop table transaksi;
select * from transaksi 
join products on (transaksi.id_products = products.id_products);

select * from transaksi 
join customers on (transaksi.id_customers = customers.id_customers);

select * from transaksi;
select customers.id_customers, customers.email, customers.nama_depan, customers.nama_belakang from 
customers inner join transaksi on customers.id_customers = transaksi.id_transaksi; 
describe transaksi;