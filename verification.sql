-- vérification 1
SELECT libelle, prix FROM article ORDER BY prix DESC;

-- vérification 2
SELECT c.nom, COUNT(a.id_article) AS nb_articles
FROM categorie c LEFT JOIN article a ON a.id_categorie = c.id_categorie
GROUP BY c.id_categorie, c.nom ORDER BY c.nom;

-- vérification 3
SELECT id_vente, SUM(quantite * prix_unitaire) AS total
FROM ligne_vente GROUP BY id_vente ORDER BY id_vente;

-- vérification 4
SELECT v.id_vente, v.date_vente, COALESCE(c.nom, 'client de passage') AS client
FROM vente v LEFT JOIN client c ON c.id_client = v.id_client
ORDER BY v.id_vente;

-- vérification 5
SELECT ve.nom, COUNT(DISTINCT v.id_vente) AS nb_ventes,
       SUM(lv.quantite * a.prix) AS chiffre_affaires
FROM vendeur ve
LEFT JOIN vente v ON v.id_vendeur = ve.id_vendeur
LEFT JOIN ligne_vente lv ON lv.id_vente = v.id_vente
LEFT JOIN article a ON a.id_article = lv.id_article
GROUP BY ve.id_vendeur, ve.nom;

-- vérification 6 : ventes non soldées
SELECT v.id_vente,
       t.du,
       COALESCE(p.paye,0) AS paye,
       t.du - COALESCE(p.paye,0) AS reste
FROM vente v
JOIN (SELECT lv.id_vente, SUM(lv.quantite*a.prix) AS du
      FROM ligne_vente lv JOIN article a ON a.id_article = lv.id_article
      GROUP BY lv.id_vente) t ON t.id_vente = v.id_vente
LEFT JOIN (SELECT id_vente, SUM(montant) AS paye FROM paiement GROUP BY id_vente) p
       ON p.id_vente = v.id_vente
WHERE t.di > COALESCE(p.paye,0)
ORDER BY v.id_vente;