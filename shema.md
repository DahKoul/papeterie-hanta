


- ARTICLE(**id_article**, libelle, prix, #id_categorie)
- CATEGORIE(**id_categorie**, nom)
- VENTE(**id_vente**, date_vente, #id_client?, #id_vendeur, #id_caisse?)
- LIGNE_VENTE(**#id_vente**, **#id_article**, quantite, prix_unitaire) (modifié)
- CLIENT(**id_client**, nom, type_client, telephone?)
- VENDEUR(**id_vendeur**, nom)
- CAISSE(**id_caisse**, nom)
- MODE_PAIEMENT(**code_mode**, libelle)
- PAIEMENT(**id_paiement**, #id_vente, #code_mode, montant, date_paiement)
- PRIX_ARTICLE(**#id_article**, **date_debut**, prix) (nouveau)

## Notes
 
- `LIGNE_VENTE.prix_unitaire` fige le prix au moment de la vente.
- `ARTICLE.prix` reste le prix actuel ; `PRIX_ARTICLE` conserve l'historique (bonus).