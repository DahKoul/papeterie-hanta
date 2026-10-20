CREATE TABLE client (
  id_client   SERIAL PRIMARY KEY,
  nom         VARCHAR(100) NOT NULL,
  type_client VARCHAR(10) NOT NULL CHECK (type_client IN ('parent','ecole')),
  telephone   VARCHAR(20)
);
INSERT INTO client (nom, type_client, telephone) VALUES
 ('Rakoto Jean','parent','034 00 000 01'),
 ('EPP Ambohijatovo','ecole','020 22 000 00');

ALTER TABLE vente ADD COLUMN id_client INTEGER REFERENCES client(id_client);
UPDATE vente SET id_client = 1 WHERE id_vente = 2;
UPDATE vente SET id_client = 2 WHERE id_vente = 3;