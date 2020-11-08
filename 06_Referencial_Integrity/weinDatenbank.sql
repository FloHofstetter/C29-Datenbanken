drop table if exists wein;

create table wein (
	weinname varchar(50),
	weingut varchar(20),
	farbe enum('rot', 'weiss'),
	anbaugebiet varchar(50),
	region varchar(50),
	preis decimal(4,2)
);

insert into wein (weinname, weingut, farbe, anbaugebiet, region, preis)
VALUES
	('Dornfelder', 'Erben', 'Rot', 'Rheinhessen', 'Hessen', 4.99),
	('Creek Shiraz', 'Creek', 'Rot', 'Barossa Valley', 'South Australia', 12.99),
	('Pinot Noir', 'Creek', 'Rot', 'Barossa Valley', 'South Australia', 6.99),
	('Zinfandel', 'Helena', 'Rot', 'Napa Valley', 'Kalifornien', 4.99),
	('Pinot Noir', 'Helena', 'Rot', 'Napa Valley', 'Kalifornien', 9.99),
	('Riesling', 'Müller', 'Weiss', 'Rheingau', 'Hessen', 4.99),
	('Silvaner', 'Erben', 'Weiss', 'Rheinhessen', 'Hessen', 3.99)
;    

%% überprüfen, ob alles richtig eingetragen wurde
select * from wein;

