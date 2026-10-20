-- vérification 1
SELECT libelle, prix FROM article ORDER BY prix DESC;

-- vérification 2
SELECT c.nom, COUNT(a.id_article) AS nb_articles
FROM categorie c LEFT JOIN article a ON a.id_categorie = c.id_categorie
GROUP BY c.id_categorie, c.nom ORDER BY c.nom;

-- vérification 3
SELECT v.id_vente, SUM(lv.quantite * a.prix) AS total
FROM vente v
JOIN ligne_vente lv ON lv.id_vente = v.id_vente
JOIN article a ON a.id_article = lv.id_article
GROUP BY v.id_vente ORDER BY v.id_vente;

-- vérification 4
SELECT v.id_vente, v.date_vente, COALESCE(c.nom, 'client de passage') AS client
FROM vente v LEFT JOIN client c ON c.id_client = v.id_client
ORDER BY v.id_vente;