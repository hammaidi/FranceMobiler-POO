-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- Création base de données France Mobilier pour le site web
-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
set names 'latin1';
create table categorie(cat_id INT not null,cat_libelle VARCHAR(50),primary key(cat_id)) ENGINE=MYISAM DEFAULT CHARSET=latin1;
create table magasin(mag_code VARCHAR(3) not null,mag_nom VARCHAR(50),mag_adresseRue VARCHAR(50),mag_cpVille VARCHAR(50),primary key(mag_code)) ENGINE=MYISAM DEFAULT CHARSET=latin1;
insert into magasin(mag_code,mag_nom,mag_adresseRue,mag_cpVille) values('ami','France-Mobilier Amiens','6, rue des hauts plateaux','80000 Amiens');
insert into magasin(mag_code,mag_nom,mag_adresseRue,mag_cpVille) values('cmp','France-Mobilier Comtes','12, rue basse','80137 Comtes-en-Ponthieu');
create table produit(pro_id INT not null,pro_reference VARCHAR(50),pro_designation VARCHAR(100),pro_prixTTC DECIMAL(19,2),pro_photo VARCHAR(50),pro_categorie INT,primary key(pro_id)) ENGINE=MYISAM DEFAULT CHARSET=latin1;
alter table produit add foreign key (pro_categorie) references categorie(cat_id);
commit;
