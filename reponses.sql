-- Reponses sql


-- afficher des lignes
select * as  from abonnements a limits 20;

-- compter les lignes
select count(*) as nblignes from contacts c ;

select count(*) as nblignes from visionnages v ;

select count(*) as nblignes from profs p  ;

select count(*) as nblignes from abonnements a  ;

select count(*) as nblignes from planning p ;

select count(*) as nblignes from cours c  ;

-- une seul fois ca affcihe resultats de l'exo précédent
select "cours" nom, count(*) as nblignes from cours c
union
select "visionnages", count(*) from visionnages v 
union
select "contacts", count(*) from contacts c  ;

-- exo4
select pl.idPlanning,c.nomCours, pr.nom  
from planning pl  left join cours c on pl.idCours = c.idCours 
left join profs pr on pl.idProf =pr.idProf ;

-- exo 5
select c.idContact, a.dateDebut , a.dateFin , a.prix 
from contacts c left join abonnements a on c.idContact = a.idContact ;
-- 10 179 lignes
select count(*) from contacts c ;
-- 5 917 lignes