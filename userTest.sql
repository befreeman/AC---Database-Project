/* tests */
5-10 for users
5-10 of each type for listenTO
5-10 for social
can be any values you want provided the songID is in range(1..1240) and rating is in range(0..10)

/* userName, quote, name */
/*insert into user values (userName text, description text, name text);*/
insert into user(userName,description,name) values('Target','Shiny','Benjamin J Freeman');
insert into user(userName,description,name) values('mTaha','#quote','Muhammad Taha');
insert into user(userName,description,name) values('gRush','#quote','Genevieve Rush');

/* rating */
/* insert into listenTo values(songID int range(1..1240),userName text,hasListenedTo bool, rating int range(0..10)) */
insert into listenTo(songID,userName,hasListenedTo,rating) values(1,'Target',true,10)
insert into listenTo(songID,userName,hasListenedTo) values(2,'Target',true)
insert into listenTo(songID,userName,hasListenedTo) values(3,'Target',false)

/*  social */
/* insert into social values(userName text, artistName text, youtube text, google text, facebook text, twitter text) */
insert into social(userName,youtube,google,facebook,twitter) values('Target','FAKEURL1','FAKEURL2','FAKEURL3','FAKEURL4');