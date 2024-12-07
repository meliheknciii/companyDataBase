create table departman(
dep_no int primary key identity(100,1) not null,
dep_posta nvarchar(max) not null,
dep_tel nvarchar(max) not null,
dep_ad nvarchar(max) not null,
dep_calisan_id int not null,
foreign key (dep_calisan_id) references calisan(sicil_no)
);

create table calisan(
sicil_no int primary key not null,
calisan_ad nvarchar(max) not null,
calisan_soyad nvarchar(max) not null,
calisan_cinsiyet nvarchar(max) not null,
calisan_maas int not null,
calisan_dogumTarihi date not null
);

create table proje(
proje_no int primary key identity(100,1) not null,
proje_sure date not null,
proje_butce int not null,
proje_ad nvarchar(max) not null
);


create table dep_proje_yonetim(
dep_proje_yonetim_id int primary key not null,
dep_no int not null,
proje_no int not null,
foreign key (dep_no) references departman(dep_no),
foreign key (proje_no) references proje(proje_no)
);

create table proje_calisan(
proje_calisan_id int primary key not null identity(100,1),
calisma_saati int not null,
proje_no int not null,
dep_no int not null,
foreign key (proje_no) references proje(proje_no),
);



alter table proje_calisan
add calisan_sicil_no int not null;

alter table proje_calisan
add foreign key (calisan_sicil_no) references calisan(sicil_no)












