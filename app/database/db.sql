-- *********************************************
-- * SQL MySQL generation                      
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 14 2021              
-- * Generation date: Sat Oct 29 16:13:30 2022 
-- * LUN file: E:\Hackathon2022\Hackathon2022.lun 
-- * Schema: MLD_Hackathon/2 
-- ********************************************* 


-- Database Section
-- ________________ 

create database MLD_Hackathon;
use MLD_Hackathon;


-- Tables Section
-- _____________ 

create table Challenge (
     numero char(2) not null,
     libelle char(1) not null,
     url char(1) not null,
     flag char(1) not null,
     categorie char(1) not null,
     difficulte char(1) not null,
     nbPoints char(1) not null,
     niveau char(1) not null,
     thematique char(1) not null,
     contenu char(1) not null,
     auteur char(1) not null,
     mailAuteur varchar(25) not null,
     constraint PK_Challenge primary key (numero));

create table Concerner (
     numero char(2) not null,
     numPartie char(2) not null,
     dateChallenge date not null,
     constraint PK_Concerner primary key (numero, numPartie));

create table Eleve (
     id char(2) not null,
     nom varchar(10) not null,
     prenom varchar(10) not null,
     sexe char(1) not null,
     classe varchar(7) not null,
     idEquipe char(2) not null,
     constraint PK_Eleve primary key (id));

create table Equipe (
     id char(2) not null,
     libelle varchar(20) not null,
     login varchar(10) not null,
     motDePasse varchar(15) not null,
     scoreTotal int not null,
     constraint PK_Equipe_ID primary key (id));

create table Parametres (
     id char(1) not null,
     nomEvenement varchar(15) not null,
     nomEtablissement varchar(20) not null,
     constraint PK_Parametres primary key (id));

create table Session (
     numPartie char(2) not null,
     partieDebut date not null,
     partieFin char(1) not null,
     etatPartie boolean not null,
     score char(1) not null,
     id char(2) not null,
     constraint PK_Session primary key (numPartie));


-- Constraints Section
-- ___________________ 

alter table Concerner add constraint FK_ConcernerSession
     foreign key (numPartie)
     references Session (numPartie);

alter table Concerner add constraint FK_ConcernerChallenge
     foreign key (numero)
     references Challenge (numero);

alter table Eleve add constraint FK_Eleve
     foreign key (idEquipe)
     references Equipe (id);

-- Not implemented
-- alter table Equipe add constraint PK_Equipe_CHK
--     check(exists(select * from Eleve
--                  where Eleve.idEquipe = id)); 

alter table Session add constraint FK_Session
     foreign key (id)
     references Equipe (id);


-- Index Section
-- _____________ 

