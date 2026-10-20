

- ARTICLE(**id_article**, libelle, prix, #id_categorie)
- CATEGORIE(**id_categorie**, nom)
- VENTE(**id_vente**, date_vente, #id_client?, #id_vendeur, #id_caisse?)
- LIGNE_VENTE(**#id_vente**, **#id_article**, quantite)
- CLIENT(**id_client**, nom, type_client, telephone?)
- VENDEUR(**id_vendeur**, nom)
- CAISSE(**id_caisse**, nom)
- MODE_PAIEMENT(**code_mode**, libelle) (nouveau)
- PAIEMENT(**id_paiement**, #id_vente, #code_mode, montant, date_paiement) (nouveau)

## Notes
 
- Un paiement par ligne : une vente peut être payée en plusieurs fois et en plusieurs modes.
- `MODE_PAIEMENT` est une table de référence plutot qu'un CHECK.
 