CREATE TABLE vendeur (id_vendeur SERIAL PRIMARY KEY, nom VARCHAR(100) NOT NULL);
CREATE TABLE caisse  (id_caisse  SERIAL PRIMARY KEY, nom VARCHAR(50)  NOT NULL UNIQUE);
INSERT INTO vendeur (nom) VALUES ('Mamy Andria'),('Voahangy Rabe');
INSERT INTO caisse  (nom) VALUES ('Entrée'),('Rayon manuels');

ALTER TABLE vente ADD COLUMN id_vendeur INTEGER REFERENCES vendeur(id_vendeur);
ALTER TABLE vente ADD COLUMN id_caisse  INTEGER REFERENCES caisse(id_caisse);

UPDATE vente SET id_vendeur = 1, id_caisse = 1 WHERE id_vente = 1;
UPDATE vente SET id_vendeur = 2, id_caisse = 2 WHERE id_vente = 2;
UPDATE vente SET id_vendeur = 2, id_caisse = NULL WHERE id_vente = 3; -- commande téléphone

ALTER TABLE vente ALTER COLUMN id_vendeur SET NOT NULL;