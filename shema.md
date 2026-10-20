- ARTICLE(**id_article**, libelle, prix, #id_categorie)
- CATEGORIE(**id_categorie**, nom)
- VENTE(**id_vente**, date_vente, #id_client?) (modifié)
- LIGNE_VENTE(**#id_vente**, **#id_article**, quantite)
- CLIENT(**id_client**, nom, type_client, telephone?) (nouveau)
## Notes
 
- `VENTE.id_client` est facultative (client de passage = NULL).