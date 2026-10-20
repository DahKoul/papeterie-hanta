

- ARTICLE(**id_article**, libelle, prix, #id_categorie)
- CATEGORIE(**id_categorie**, nom)
- VENTE(**id_vente**, date_vente, #id_client?, #id_vendeur, #id_caisse?) (modifié)
- LIGNE_VENTE(**#id_vente**, **#id_article**, quantite)
- CLIENT(**id_client**, nom, type_client, telephone?)
- VENDEUR(**id_vendeur**, nom) (nouveau)
- CAISSE(**id_caisse**, nom) (nouveau)

## Notes
 
- `id_vendeur` obligatoire (NOT NULL), `id_caisse` facultative (commande par téléphone).