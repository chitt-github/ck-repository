create table DOG_BREED_DETAILS (
	id 				tinyint(3)  not null default '0',
	breed_Type	    varchar(25) not null default '',
	favorite_Count   tinyint(2)  not null default '0',
    image_id        tinyint(3)  not null default '0',
	image_name      varchar(50) not null default '',
	other_Info       varchar(250) not null default '',
	url	    		varchar(200) not null default '',
	PRIMARY KEY (`id`)
);


INSERT INTO DOG_BREED_DETAILS VALUES (1,'Affenpinscher',0,101,'AffenpinscherAugi.JPG','shortly comming more details', 'click the url');

INSERT INTO DOG_BREED_DETAILS VALUES (2,'Affenpinscher',0,102,'American_water_spaniel.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (3,'Affenpinscher',0,103,'NorfolkTerrierinde.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (4,'Affenpinscher',0,104,'PapillonFrisbee.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (5,'Affenpinscher',0,105,'PapillonFrisbee.jpg','shortly comming more details', 'click the url');

INSERT INTO DOG_BREED_DETAILS VALUES (6,'JackRussell',0,106,'Brittany_02625.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (7,'JackRussell',0,107,'Labrador_retriever.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (8,'JackRussell',0,108,'RebelTerrierPurebred.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (9,'JackRussell',0,109,'RebelTerrierPurebred.jpg','shortly comming more details', 'click the url');

INSERT INTO DOG_BREED_DETAILS VALUES (10,'Labrador',0,110,'Curly-coated_retriever.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (11,'Labrador',0,111,'Labrador_retriever.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (12,'Labrador',0,112,'Labrador_retriever_06455.jpg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (13,'Labrador',0,113,'Rocket-sitting-primary.jpeg','shortly comming more details', 'click the url');
INSERT INTO DOG_BREED_DETAILS VALUES (14,'Labrador',0,114,'sample_dog_output.png','shortly comming more details', 'click the url');