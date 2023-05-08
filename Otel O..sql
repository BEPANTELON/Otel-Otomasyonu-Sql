create database OtelAutomation
go
use OtelAutomation
go 
Create table kullaniciBilgileri
(KullaniciBilgileriId int identity,
Ad nvarchar(50),
Soyad nvarchar(50),
Telefon nvarchar(50),
Email nvarchar(50),
kullaniciAdi nvarchar(50),
kullaniciSifre nvarchar(50),
girisTarihi date,
Constraint Pk_KullaniciBilgileriId Primary key(KullaniciBilgileriId)
)
go
create table odalar
(odalarId int identity,
odaAdi nvarchar(50),
odayiAlan varchar(50),
durumu varchar(50),  
butonAdi varchar(50),
Constraint Pk_odalarId Primary key(odalarId)
)
go
create table OdaKategorileri
(OdaKategorileriId int identity,
kategoriAdi nvarchar(50),
Constraint Pk_OdaKategorileriId Primary key(OdaKategorileriId)
)
go
create table MutfakKategoriler
(MutfakKategorilerId int identity,
kategoriAdi nvarchar(50),
Constraint Pk_MutfakKategorilerId Primary key(MutfakKategorilerId)
)
go
Create table OdaUrunleri
(OdaUrunleriId int identity,
urunAdi nvarchar(50),
kategori varchar(50), 
adet varchar(50),
fiyat varchar(50),
firma varchar(50),
gelisTarihi datetime,
Constraint Pk_OdaUrunleriId Primary key(OdaUrunleriId)
)
go
Create table musteriler
(musterilerId int identity,
adi nvarchar(50),
soyadi nvarchar(50),
cinsyet varchar(50),
telefon varchar(50),
mail varchar(50),
tcNo varchar(50),
odaNo varchar(50),
ucret varchar(50),
girisTarihi datetime,
cikisTarihi datetime,
Constraint Pk_musterilerId Primary key(musterilerId),
)
go
Create table MutfakUrunleri
(MutfakUrunleriId int identity,
urunAdi nvarchar(50),
kategori varchar(50), 
adet varchar(50),
fiyat varchar(50),
firma varchar(50),
gelisTarihi datetime,
Constraint Pk_MutfakUrunleriId Primary key(MutfakUrunleriId)
)
go
Create table Personeller
(PersonellerId int identity,
Adi nvarchar(50),
Soyadi nvarchar(50),
Bolum nvarchar(50),
Cinsyet varchar(50),
Telefon varchar(50),
Mail varchar(50),
TcNo varchar(50),
Maas varchar(50),
GirisTarihi datetime,
CikisTarihi datetime,
Constraint Pk_PersonellerId Primary key(PersonellerId),
)
go
create table Otel
(OtelId int identity,
KullaniciBilgileriId int,
OdalarId int,
OdaKategorileriId int,
MutfakKategorilerId int,
OdaUrunleriId int,
MusterilerId int,
MutfakUrunleriId int,
PersonellerId int,
Constraint Pk_OtelId Primary key(OtelId),
FOREIGN KEY (KullaniciBilgileriId) REFERENCES kullaniciBilgileri(KullaniciBilgileriId),
FOREIGN KEY (odalarId) REFERENCES odalar(odalarId),
FOREIGN KEY (OdaKategorileriId) REFERENCES OdaKategorileri(OdaKategorileriId),
FOREIGN KEY (MutfakKategorilerId) REFERENCES MutfakKategoriler(MutfakKategorilerId),
FOREIGN KEY (OdaUrunleriId) REFERENCES OdaUrunleri(OdaUrunleriId),
FOREIGN KEY (musterilerId) REFERENCES musteriler(musterilerId),
FOREIGN KEY (MutfakUrunleriId) REFERENCES MutfakUrunleri(MutfakUrunleriId),
FOREIGN KEY (PersonellerId) REFERENCES Personeller(PersonellerId)
)
