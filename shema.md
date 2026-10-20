- ARTICLE(**id_article**, libelle, prix, #id_categorie)
- CATEGORIE(**id_categorie**, nom)
- VENTE(**id_vente**, date_vente) (nouveau)
- LIGNE_VENTE(**#id_vente**, **#id_article**, quantite) (nouveau)
## Notes
 
- La quantité est portée par l'association `LIGNE_VENTE` (clé primaire composée).