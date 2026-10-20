-- vérification 1
SELECT libelle, prix FROM article ORDER BY prix DESC;

-- vérification 2
SELECT c.nom, COUNT(a.id_article) AS nb_articles
FROM categorie c LEFT JOIN article a ON a.id_categorie = c.id_categorie
GROUP BY c.id_categorie, c.nom ORDER BY c.nom;