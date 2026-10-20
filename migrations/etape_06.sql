CREATE TABLE mode_paiement (
  code_mode VARCHAR(10) PRIMARY KEY,
  libelle   VARCHAR(50) NOT NULL
);

INSERT INTO mode_paiement VALUES
 ('ESP','Espèces'),('MVOLA','MVola'),('OM','Orange Money'),('CHQ','Chèque');

CREATE TABLE paiement (
  id_paiement   SERIAL PRIMARY KEY,
  id_vente      INTEGER NOT NULL REFERENCES vente(id_vente),
  code_mode     VARCHAR(10) NOT NULL REFERENCES mode_paiement(code_mode),
  montant       INTEGER NOT NULL CHECK (montant > 0),
  date_paiement TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO paiement (id_vente, code_mode, montant, date_paiement) VALUES
 (1,'ESP',7000,'2026-10-05 10:16'),
 (2,'MVOLA',10000,'2026-10-06 14:32'),
 (2,'ESP',5000,'2026-10-06 14:33'),
 (3,'CHQ',20000,'2026-10-08 09:10');