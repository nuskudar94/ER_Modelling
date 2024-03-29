--Alle sjangere i tabellen Genre (28)
select * from genre;

--Filmid og tittel for alle filmer utgitt i 1892 (12)
select filmid, title from film where prodyear = '1892' ;

--Filmid og tittel for alle filmer der filmid er mellom 2000 og 2030 (14)
- select filmid, title from film where filmid between 2000 and 2030 ;

Filmid og tittel på alle filmer med Star Wars i navnet (129)
- select filmid, title from film where title like '%Star Wars%' ;

Fornavn og etternavn til personid 465221 (1)
- select firstname,lastname from person where personid= '465221';

Alle unike rolletyper (parttype) i tabellen Filmparticipation (7)
- select distinct parttype from filmparticipation;

Tittel og produksjonsår for alle filmer som inneholder ordene «Rush Hour» (15)
- select title, prodyear from film where title like '%Rush Hour%';

Vis filmid, navn og produksjonsår for filmer som inneholder ordet «Norge» (27) 
- select filmid, title, prodyear from film where title like '%Norge%';

Vis filmid for kinofilmer som har filmtittelen Love (kinofilmer har filmtype «C») (42)
- select f.filmid from film as f  inner join filmitem on f.filmid = filmitem.filmid where filmitem.filmtype='C' and f.title='Love';

Hvor mange filmer i filmdatabasen er norske?


Filmid og filmtype (fra Filmitem) for alle filmer som ble produsert i 1894 (82)

- select fi.filmid, fi.filmtype from filmitem as fi where fi.filmid in(select f.filmid from film as f where f.prodyear = '1894');

Navn på alle kvinnelige skuespillere (cast) i filmen med filmid 357076 (11)

- select p.firstname,p.lastname from person as p where p.gender='F' and p.personid in(select f.personid from filmparticipation as f where f.filmid = 357076 and f.parttype='cast');


Alle sjangere (eng.: genres) til filmen ‘Pirates of the Caribbean: The Legend of Jack Sparrow’ (5)
- select fg.genre from film as f inner join filmgenre as fg  on f.filmid=fg.filmid where f.title='Pirates of the Caribbean: The Legend of Jack Sparrow';

Alle sjangere for filmen med filmid 985057 (9)
Tittel, produksjonsår og filmtype for alle filmer som ble produsert i 1894 (82)
