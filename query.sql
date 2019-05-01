
-- Reponses au questions
-- Query SQL



-- 1) Customer list (by customer number)
select idClient from pfr.client;

-- 2) Entering a new client

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(131,'Bryant','Kobe','8 rue des arcs',0728926361,'kobeB@gmail.com',2,'Correct','2018/03/24 8:30:00','2018/03/25 21:00:00');


-- 3) List of cars, their position and availability
select marque,modele,Parking_NomP,Disponible  from pfr.voiture ;

-- 4)Selection of a car available in a borough
 select * from pfr.voiture where Disponible = 'Oui' and Parking_NomP='Gare de Lyon';

-- 5)Request to update the parking space of a vehicle identified by its registration
update pfr.voiture set NumeroPlace = 'A3' where NoImmat = 'BQ107Z4';

-- 6)How many maintenance operations on a car identified by its registration
select count(*) from pfr.voiture where Disponible='non' and motif not like'déjà louée' and Noimmat='HF416V3';

-- 7)Recording the return of a car


create table pfr.EnregistrementVoiture(
NumeroEnregistrementVoiture int ,
NoImmat varchar(45),
idControleur int,
DateFinLocationVoiture datetime,
primary key(NumeroEnregistrementVoiture),
constraint Noimmat foreign key(Noimmat) references pfr.voiture(Noimmat)on delete no action);

select * from pfr.enregistrementvoiture;
insert  into pfr.enregistrementVoiture(NumeroEnregistrementVoiture,NoImmat,idControleur,DateFinLocationVoiture)
values(520,'BQ107Z4',1,'2018/01/07 21:00:00');





-- 8) Number of cars controlled by each controller
select count(*) from pfr.voiture where Controleur_idControleur=1;
select count(*) from pfr.voiture where Controleur_idControleur=2;
select count(*) from pfr.voiture where Controleur_idControleur=3;

-- 9)List of cars not available and corresponding reason
select marque,modele,motif  from pfr.voiture where Disponible = 'Non';

-- 10)Recording of a maintenance operation by one of the controllers on a car identified by his registration

create table pfr.Enregistrement(
NumeroEnregistrement int ,
NoImmat varchar(45),
idControleur int,
motifMaintenance varchar(45),
primary key(NumeroEnregistrement),
constraint NoImmat foreign key(NoImmat) references pfr.voiture (NoImmat) on delete no action);


select * from pfr.enregistrement;
insert  into pfr.enregistrement(NumeroEnregistrement,NoImmat,idControleur,motifMaintenance)
values(420,'KL347Z8',3,'Nettoyage Exterieur');
