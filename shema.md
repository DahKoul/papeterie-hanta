- ARTICLE(**id_article**, libelle, prix, #id_categorie) (modifié)
- CATEGORIE(**id_categorie**, nom) (nouveau)
## Notes
 
- `ARTICLE.id_categorie` est ajoutée nullable, remplie par UPDATE, puis passée en NOT NULL.