    -- etape 07b


-- 1) prix fige dans la ligne de vente. Les ventes existantes ont été faites
--    au prix d'avant 15/10, donc l'ancien prix du cahier 100 pages est retournenr.

ALTER TABLE ligne_vente ADD COLUMN prix_unitaire INTEGER;

UPDATE ligne_vente lv SET prix_unitaire = a.prix FROM article a WHERE a.id_article = lv.id_article;

UPDATE ligne_vente SET prix_unitaire = 1200 WHERE id_article = (SELECT id_article FROM article WHERE libelle='Cahier 100 pages');

ALTER TABLE ligne_vente ALTER COLUMN prix_unitaire SET NOT NULL;
ALTER TABLE ligne_vente ADD CHECK (prix_unitaire >= 0);

-- 2)historique des prix

CREATE TABLE prix_article (
  id_article INTEGER NOT NULL REFERENCES article(id_article),
  date_debut DATE NOT NULL,
  prix       INTEGER NOT NULL CHECK (prix >= 0),
  PRIMARY KEY (id_article, date_debut)
);


INSERT INTO prix_article (id_article, date_debut, prix) SELECT id_article, DATE '2026-09-01', prix FROM article;       -- prix initiaux

UPDATE prix_article SET prix = 1200 WHERE id_article = (SELECT id_article FROM article WHERE libelle='Cahier 100 pages');

INSERT INTO prix_article (id_article, date_debut, prix) SELECT id_article, DATE '2026-10-15', 1500 FROM article WHERE libelle='Cahier 100 pages';

-- 3) nouvelle vente aprés l'augmentation

INSERT INTO vente (date_vente, id_vendeur, id_caisse) VALUES ('2026-10-16 11:00', 1, 1);
INSERT INTO ligne_vente VALUES (4, 1, 2, 1500);