


- ARTICLE(**id_article**, libelle, prix, #id_categorie)
- CATEGORIE(**id_categorie**, nom)
- VENTE(**id_vente**, date_vente, #id_client?, #id_vendeur, #id_caisse?)
- LIGNE_VENTE(**#id_vente**, **#id_article**, quantite, prix_unitaire)
- CLIENT(**id_client**, nom, type_client, telephone?)
- VENDEUR(**id_vendeur**, nom)
- CAISSE(**id_caisse**, nom)
- MODE_PAIEMENT(**code_mode**, libelle)
- PAIEMENT(**id_paiement**, #id_vente, #code_mode, montant, date_paiement)
- PRIX_ARTICLE(**#id_article**, **date_debut**, prix)
- NIVEAU(**id_niveau**, code) (nouveau)
- LISTE_FOURNITURE(**#id_niveau**, **#id_article**, quantite) (nouveau)

## Notes
 
- `LISTE_FOURNITURE` : une ligne par (niveau, article) avec la quantité demandée.