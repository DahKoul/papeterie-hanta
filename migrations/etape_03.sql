CREATE TABLE vente (
  id_vente   SERIAL PRIMARY KEY,
  date_vente TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE ligne_vente (
  id_vente   INTEGER NOT NULL REFERENCES vente(id_vente),
  id_article INTEGER NOT NULL REFERENCES article(id_article),
  quantite   INTEGER NOT NULL CHECK (quantite > 0),
  PRIMARY KEY (id_vente, id_article)
);

INSERT INTO vente (date_vente) VALUES
 ('2026-10-05 10:15'),('2026-10-06 14:30'),('2026-10-08 09:05');

INSERT INTO ligne_vente VALUES
 (1,1,5),(1,3,2),
 (2,6,1),(2,2,1),
 (3,7,2);