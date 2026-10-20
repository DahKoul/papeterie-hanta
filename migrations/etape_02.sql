CREATE TABLE categorie (
  id_categorie SERIAL PRIMARY KEY,
  nom VARCHAR(50) NOT NULL UNIQUE
);
INSERT INTO categorie (nom) VALUES ('Cahiers'),('Écriture'),('Géométrie'),('Manuels scolaires'),('Bagagerie');

ALTER TABLE article ADD COLUMN id_categorie INTEGER REFERENCES categorie(id_categorie);

UPDATE article SET id_categorie = (SELECT id_categorie FROM categorie WHERE nom='Cahiers')
  WHERE libelle LIKE 'Cahier%';
UPDATE article SET id_categorie = (SELECT id_categorie FROM categorie WHERE nom='Écriture')
  WHERE libelle IN ('Stylo à bille bleu','Crayon à papier');
UPDATE article SET id_categorie = (SELECT id_categorie FROM categorie WHERE nom='Géométrie')
  WHERE libelle = 'Règle 30 cm';
UPDATE article SET id_categorie = (SELECT id_categorie FROM categorie WHERE nom='Manuels scolaires')
  WHERE libelle LIKE 'Manuel%';
UPDATE article SET id_categorie = (SELECT id_categorie FROM categorie WHERE nom='Bagagerie')
  WHERE libelle = 'Cartable';

ALTER TABLE article ALTER COLUMN id_categorie SET NOT NULL;