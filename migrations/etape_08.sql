
CREATE TABLE niveau (
  id_niveau SERIAL PRIMARY KEY,
  code      VARCHAR(10) NOT NULL UNIQUE
);

INSERT INTO niveau (code) VALUES ('CP'),('CE1'),('CM2'),('6e');

CREATE TABLE liste_fourniture (
  id_niveau  INTEGER NOT NULL REFERENCES niveau(id_niveau),
  id_article INTEGER NOT NULL REFERENCES article(id_article),
  quantite   INTEGER NOT NULL CHECK (quantite > 0),
  PRIMARY KEY (id_niveau, id_article)
);

-- CP : 6 cahiers 100p, 4 crayons, 2 stylos
INSERT INTO liste_fourniture VALUES (1,1,6),(1,4,4),(1,3,2);

-- CM2 : 4 cahiers 100p, 2 cahiers 200p, 4 stylos, 1 règle, 1 manuel
INSERT INTO liste_fourniture VALUES (3,1,4),(3,2,2),(3,3,4),(3,5,1),(3,6,1);