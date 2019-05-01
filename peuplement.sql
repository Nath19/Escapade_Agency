
-- Insertion of the agency

insert into pfr.agence(NomA,Adresse)
values ('escapade','25 avenue victor hugo');


-- Insertion of Controller

insert into pfr.controleur(idControleur,Agence_NomA)
values (1,'escapade');

insert into pfr.controleur(idControleur,Agence_NomA)
values (2,'escapade');

insert into pfr.controleur(idControleur,Agence_NomA)
values (3,'escapade');






-- Insertion of PARKINGS


insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Rivoli','Paris','2 Rue Boucher',75001,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Beaubourg','Paris','31 rue Beaubourg',75003,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Lobau','Paris','4 rue Lobau',75004,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Soufflot','Paris','22 Rue Soufflot',75005,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Jardin des plantes','Paris','25 Rue Geoffroy-Saint-Hilaire',75006,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Maubourg','Paris','45 Quai Orsay',75007,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Champs-Elysees','Paris','77 Avenue Marceau',75008,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Pigalle','Paris','10 Rue jean-baptiste Pigalle',75009,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Lariboisiere','Paris','1 bis Rue Ambroise Paré',75010,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Oberkampf','Paris','11 Rue Ternaux',75011,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Gare de Lyon','Paris','6 rue de Rambouillet',75012,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Italie','Paris','25 rue Stephen Pichon',75013,'escapade');


insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Raspail','Paris','120 Boulevard du Montparnasse',75014,'escapade');


insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Beaugrenelle ','Paris','5 quai Andre citroen',75015,'escapade');


insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Victor Hugo','Paris','74 Avenue Victor Hugo',75016,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Ternes','Paris','38 Avenue des Ternes',75017,'escapade');


insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Stalingrad','Paris','13 rue AUbervillier',75018,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Philharmonie','Paris','185 Boulevard Sérurier',75019,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Rosa Parks','Paris','157 boulevard Macdonald',75020,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Orly','Orly','Orly Airport',94310,'escapade');

insert into pfr.parking(NomP,Ville,Adresse,Arrrondissement,Agence_NomA)
values ('Roissy','Roissy en France','Roissy Airport',95700,'escapade');



-- Inserion of cars


insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values ('BQ107Z4','Renault','Laguna','Berline',4,'Oui','A0','','Rivoli',1);


insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('LA212C5','Mercedes','Classe C','Berline',4,'Oui','A1','','Rivoli',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('MN334B2','Toyota','Rav 4','Berline',4,'Oui','A0','','Beaubourg',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('NY372D3','Honda','Civic','Berline',4,'Non','A1','Mecanique','Beaubourg',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('PR458E7','Citroen','DS4','Berline',4,'Non','A1','Plein dessence','Beaubourg',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('KL347Z8','Ford','Focus','Berline',4,'Non','A0','Nettoyage Exterieur','Lobau',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('RA128B9','Mini','2 Cabriolet','Cabriolet',2,'oui','A1','','Lobau',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('SD823J1','Audi','TT 8S','Cabriolet',2,'oui','A0','','Soufflot',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('PI536A2','BMW','M235I','Berline',4,'oui','A1','','Soufflot',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('HF416V3','BMW','Z4','Cabriolet',2,'Non','A0','Nettoyage Interieur','Jardin des plantes',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('DG475S4','Fiat','124 Spyder','Cabriolet',2,'Non','A1','Déjà Louée','Jardin des plantes',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('RX764B7','Ford','Mustang MKV1','Berline',4,'Oui','A0','','Maubourg',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('YU387F8','Chevrolet','Camaro SS','Berline',4,'Oui','A1','','Maubourg',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('BG742X9','Mercedes','Classe A','Berline',4,'Non','A0','Déjà Louée','Champs-Elysées',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('WS659N1','Cadillac','300 C','Berline',4,'Non','A1','Déjà Louée','Champs-Elysées',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('BG916H2','Mini','1','Berline',4,'Non','A0','Déjà Louée','Pigalle',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('MI716T3','Renault','Mégane','Berline',4,'Non','A1','Déjà Louée','Pigalle',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('FE128Y4','Renault','Scenic','Berline',4,'Oui','A0','','Lariboisière',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('LY145BT','Volkswagen','Touareg','Berline',4,'Oui','A1','','Lariboisière',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('IB348FE','Volkswagen','Passat','Berline',4,'Oui','A0','','Oberkampf',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('TZ824BN','Volkswagen','Tiguan','Berline',4,'Oui','A1','','Oberkampf',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('IG816ML','Audi','A3','Berline',4,'Oui','A0','','Gare de Lyon',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('TO427FT','Audi','Q3','Berline',4,'Oui','A1','','Gare de Lyon',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('ES317JC','Citroen','C2','Berline',4,'Oui','A0','','Italie',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('UR910BT','Citroen','C4 Picasso','Berline',4,'Oui','A1','','Italie',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('PY120KH','Dodge','Charger','Berline',4,'Oui','A0','','Raspail',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('PY190KH','Toyota','Verso','Berline',4,'Oui','A1','','Raspail',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('ZF451BH','Honda','Civic','Berline',4,'Oui','A0','','Beaugrenelle',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('CX156NY','Mercedes','Classe C','Berline',4,'Oui','A1','','Beaugrenelle',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('UD413HV','Mercedes','Classe A','Berline',4,'Oui','A0','','Victor Hugo',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('WA964TE','Audi','A3','Berline',4,'Oui','A0','','Ternes',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('DS458DY','Audi','A6','Berline',4,'Oui','A1','','Ternes',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('CA018BX','Audi','Q3','Berline',4,'Oui','A0','','Stalingrad',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('AB461JY','BMW','X1','Berline',4,'Oui','A1','','Stalingrad',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('SQ618GT','BMW','X3','Berline',4,'Oui','A0','','Philharmonie',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('FD824JF','BMW','X5','Berline',4,'Oui','A1','','Philharmonie',2);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('XF696NE','Audi','R8','Berline',4,'Oui','A0','','Rosa Parks',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('XF796NA','Audi','A3','Berline',4,'Oui','A1','','Rosa Parks',3);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('WG520BG','Mazda','RX6','Cabriolet',2,'Oui','A0','','Orly',1);

insert into pfr.voiture(NoImmat,Marque,Modele,Categorie,NombrePlace,Disponible,NumeroPlace,Motif,Parking_NomP,Controleur_idControleur)
values('EG320KL','Renault','Megane','Berline',4,'Oui','A0','','Roissy',2);


-- Insertion of customers

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(120,'Delon','Alain','20 rue lefevre',0619384716,'alaindelon@gmail.com',4,'Tres agreable','2018-01-06 8:30:00','2018/01/07 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(121,'Roubert','Philippe','23 rue des artistes',0620651092,'philipperoubert@gmail.com',2,'Correct','2018/01/13  8:30:00','2018/01/14  21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(122,'Elmaleh','Gad','8 avenue des champs-elysees',0621561834,'gadelmaleh@gmail.com',5,'Parfait','2018/01/20 8:30:00','2018/01/21 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(123,'Benzema','Karim','44 place de la roquette',0622783219,'karimbenzema@gmail.com',1,'Moyen','2018/01/27  8:30:00','2018/01/28 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(124,'Dubois','Gregory','53 avenue maurice ravel',0628352219,'gregorydubois@gmail.com',3,'Agreable','2018/02/03 8:30:00','2018/02/04 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(125,'Amar','Nathan','23 rue de la pompe',0619389212,'nathanamar@gmail.com',3,'Agreable','2018/02/10 8:30:00','2018/02/11 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(126,'Amar','Ruben','15 rue de paix ',0781573838,'rubenamar@gmail.com',0,'Mediocre','2018/02/17 8:30:00','2018/02/18 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(127,'James','Lebron','rue paul valery',0620361102,'lebronjames@gmail.com',4,'Tres Agreable','2018/02/24 8:30:00','2018/02/25 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(128,'Irving','Kyrie','19 avenue de new york',0612549310,'kyrie02@gmail.com',5,'Parfait','2018/03/03 8:30:00','2018/03/04 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(129,'Parker','Tony','98 avenue de la republique',0783173423,'tp09@gmail.com',0,'Mediocre','2018/03/10 8:30:00','2018/03/11 21:00:00');

insert into pfr.client(idClient,Nom,Prenom,Adresse,NoTel,Mail,Notes,Appreciation,DateDebutLocationVoiture,DateFinLocationVoiture)
values(130,'Antony','Carmelo','20 avenue foch',0618923367,'melo7@gmail.com',2,'Correct','2018/03/17 8:30:00','2018/03/18 21:00:00');



-- Insertion of accomodation
insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(220,'Paris',75001,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(221,'Paris',75002,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(222,'Paris',75003,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(223,'Paris',75004,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(224,'Paris',75005,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(225,'Paris',75006,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(226,'Paris',75007,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(227,'Paris',75008,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(228,'Paris',75009,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(229,'Paris',75010,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(230,'Paris',75011,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(231,'Paris',75012,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(232,'Paris',75013,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(233,'Paris',75014,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(234,'Paris',75015,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(235,'Paris',75016,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(236,'Paris',75017,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(237,'Paris',75018,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(238,'Paris',75019,'oui');

insert into pfr.logement(idLogement,Ville,Arrondissement,Disponible)
values(239,'Paris',75020,'oui');





insert into pfr.sejour(idSejour,Theme,DateSejour,Arrondissement,NumeroSemaine,Agence_NomA,Disponible)
values(320,'TRP','2018-01-06',75001,1,'escapade','oui');
alter table pfr.sejour add Disponible varchar(15);

insert into pfr.sejour(idSejour,Theme,DateSejour,Arrondissement,NumeroSemaine,Agence_NomA,Disponible)
values(321,'MSU','2018-01-13',75003,2,'escapade','oui');

insert into pfr.sejour(idSejour,Theme,DateSejour,Arrondissement,NumeroSemaine,Agence_NomA,Disponible)
values(322,'EXO','2018-01-20',75004,3,'escapade','oui');

insert into pfr.sejour(idSejour,Theme,DateSejour,Arrondissement,NumeroSemaine,Agence_NomA,Disponible)
values(323,'CLT','2018-01-27',75005,4,'escapade','oui');


insert into pfr.sejour(idSejour,Theme,DateSejour,Arrondissement,NumeroSemaine,Agence_NomA,Disponible)
values(324,'PRO','2018-02-03',75006,5,'escapade','oui');

insert into pfr.sejour(idSejour,Theme,DateSejour,Arrondissement,NumeroSemaine,Agence_NomA,Disponible)
values(325,'ITA','2018-02-10',75007,6,'escapade','oui');

insert into pfr.sejour(idSejour,Theme,DateSejour,Arrondissement,NumeroSemaine,Agence_NomA,Disponible)
values(326,'DEC','2018-02-17',75008,7,'escapade','oui');
