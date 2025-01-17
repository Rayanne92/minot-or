# Dictionnaire de Données - Gestion d'une Boulangerie

| Données         | Attributs              | Type de Donnée       |
|------------------|------------------------|-----------------------|
| **Boulangerie**  | id_boulangerie         | INT (PK)             |
|                  | nom                    | VARCHAR              |
|                  | téléphone              | VARCHAR              |
|                  | email                  | VARCHAR              |
|                  | adresse                | VARCHAR              |
| **Administrateur** | id_administrateur     | INT (PK)             |
|                  | nom                    | VARCHAR              |
|                  | prenom                 | VARCHAR              |
|                  | email                  | VARCHAR              |
|                  | telephone              | VARCHAR              |
|                  | mot_de_passe           | VARCHAR              |
| **Menu**         | id_menu                | INT (PK)             |
|                  | nom_menu               | VARCHAR              |
|                  | description            | TEXT                 |
|                  | id_boulangerie         | INT (FK)             |
| **Plat**         | id_plat                | INT (PK)             |
|                  | nom_plat               | VARCHAR              |
|                  | description            | TEXT                 |
|                  | prix                   | DECIMAL              |
|                  | id_menu                | INT (FK)             |
| **Commande**     | id_commande            | INT (PK)             |
|                  | date_commande          | DATE                 |
|                  | heure_commande         | TIME                 |
|                  | id_client              | INT (FK)             |
|                  | quantité               | INT                  |
|                  | id_plat                | INT (FK)             |
|                  | adresse_livraison      | TEXT                 |
| **Client**       | id_client              | INT (PK)             |
|                  | nom                    | VARCHAR              |
|                  | prénom                 | VARCHAR              |
|                  | téléphone              | VARCHAR              |
|                  | email                  | VARCHAR              |
|                  | adresse                | VARCHAR              |
| **Facture**      | id_facture             | INT (PK)             |
|                  | id_commande            | INT (FK)             |
|                  | montant_total          | DECIMAL              |
| **Produit**      | id_produit             | INT (PK)             |
|                  | nom_produit            | VARCHAR              |
|                  | description            | TEXT                 |
|                  | stock                  | INT                  |
|                  | prix                   | INT                  |
| **Employé**      | id_employé             | INT (PK)             |
|                  | nom                    | VARCHAR              |
|                  | prénom                 | VARCHAR              |
|                  | poste                  | VARCHAR              |
|                  | salaire                | INT                  |
| **Livreur**      | id_livreur             | INT (PK)             |
|                  | commande_id            | INT (FK)             |
|                  | adresse_livraison      | TEXT                 |
|                  | statut_livraison       | VARCHAR              |
|                  | date_livraison         | DATE                 |
| **Stock**        | id_stock               | INT (PK)             |
|                  | id_produit             | INT (FK)             |
|                  | quantite_disponible    | INT                  |
|                  | date                   | DATE                 |
