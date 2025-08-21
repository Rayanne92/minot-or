# 📖 Dictionnaire de données

## Table **Boulanger**
| Champ            | Type              | Contraintes                   | Description |
|------------------|------------------|-------------------------------|-------------|
| _id              | INTEGER          | PK, NOT NULL                  | Identifiant unique |
| nom              | VARCHAR(50)      | NOT NULL                      | Nom du boulanger |
| prenom           | VARCHAR(50)      | NOT NULL                      | Prénom du boulanger |
| fonction         | VARCHAR(50)      | NOT NULL                      | Fonction |
| raisonSociale    | VARCHAR(255)     | NOT NULL                      | Raison sociale |
| siret            | VARCHAR(14)      | NOT NULL                      | Numéro SIRET |
| adresse          | VARCHAR(255)     | NOT NULL                      | Adresse |
| codePostal       | VARCHAR(5)       | NOT NULL                      | Code postal |
| ville            | VARCHAR(255)     | NOT NULL                      | Ville |
| pays             | VARCHAR(255)     | NOT NULL                      | Pays |
| telephone        | VARCHAR(10)      | NOT NULL                      | Téléphone |
| email            | VARCHAR(255)     | NOT NULL                      | Email |
| motDePasse       | VARCHAR(255)     | NOT NULL                      | Mot de passe |
| codeReset        | FLOAT            | NOT NULL                      | Code de réinitialisation |
| codeResetExpire  | DATETIME         | NOT NULL                      | Expiration du code reset |
| role             | ENUM("Boulanger")| NOT NULL                      | Rôle attribué |
| etat             | ENUM(...)        | NOT NULL                      | Statut du compte |
| localisation     | ENUM("Point")    | NOT NULL                      | Type de localisation |
| coordinates      | FLOAT            | NOT NULL                      | Coordonnées GPS |

---

## Table **Produit**
| Champ        | Type               | Contraintes | Description |
|--------------|-------------------|-------------|-------------|
| _id          | INTEGER           | PK, NOT NULL| Identifiant unique |
| image        | VARCHAR(255)      | NOT NULL    | Image du produit |
| nom          | VARCHAR(255)      | NOT NULL    | Nom du produit |
| description  | VARCHAR(255)      | NOT NULL    | Description |
| prixHT       | FLOAT             | NOT NULL    | Prix HT |
| prixTTC      | FLOAT             | NOT NULL    | Prix TTC |
| unite        | ENUM(...)         | NOT NULL    | Unité (Sac, Palette, Vrac) |
| poids        | FLOAT             | NOT NULL    | Poids |

---

## Table **Minotier**
| Champ         | Type          | Contraintes | Description |
|---------------|--------------|-------------|-------------|
| _id           | INTEGER      | PK, NOT NULL| Identifiant unique |
| nomSociete    | VARCHAR(255) | NOT NULL    | Nom de la société |
| contactNom    | VARCHAR(255) | NOT NULL    | Nom du contact |
| contactPrenom | VARCHAR(255) | NOT NULL    | Prénom du contact |
| email         | VARCHAR(255) | NOT NULL    | Email |
| telephone     | VARCHAR(10)  | NOT NULL    | Téléphone |
| siret         | VARCHAR(14)  | NOT NULL    | Numéro SIRET |
| rue           | VARCHAR(255) | NOT NULL    | Rue |
| codePostal    | VARCHAR(5)   | NOT NULL    | Code postal |
| ville         | VARCHAR(255) | NOT NULL    | Ville |

---

## Table **Entrepot**
| Champ        | Type            | Contraintes | Description |
|--------------|----------------|-------------|-------------|
| _id          | INTEGER        | PK, NOT NULL| Identifiant unique |
| nom          | VARCHAR(255)   | NOT NULL    | Nom de l’entrepôt |
| adresse      | VARCHAR(255)   | NOT NULL    | Adresse |
| codePostal   | VARCHAR(5)     | NOT NULL    | Code postal |
| ville        | VARCHAR(255)   | NOT NULL    | Ville |
| pays         | VARCHAR(255)   | NOT NULL    | Pays |
| responsable  | VARCHAR(255)   | NOT NULL    | Responsable |
| telephone    | VARCHAR(10)    | NOT NULL    | Téléphone |
| localisation | ENUM("Point")  | NOT NULL    | Type de localisation |
| coordinates  | FLOAT          | NOT NULL    | Coordonnées GPS |

---

## Table **Commercial**
| Champ       | Type              | Contraintes | Description |
|-------------|------------------|-------------|-------------|
| _id         | INTEGER          | PK, NOT NULL| Identifiant unique |
| nom         | VARCHAR(255)     | NOT NULL    | Nom |
| prenom      | VARCHAR(255)     | NOT NULL    | Prénom |
| email       | VARCHAR(255)     | NOT NULL    | Email |
| motDePasse  | VARCHAR(255)     | NOT NULL    | Mot de passe |
| telephone   | VARCHAR(10)      | NOT NULL    | Téléphone |
| role        | ENUM("Commercial")| NOT NULL   | Rôle attribué |
| actif       | BOOL             | NOT NULL    | Statut actif |
| token       | VARCHAR(255)     | NOT NULL    | Jeton d’authentification |

---

## Table **CommandeFournisseur**
| Champ              | Type          | Contraintes | Description |
|--------------------|--------------|-------------|-------------|
| _id                | INTEGER      | PK, NOT NULL| Identifiant unique |
| reference          | VARCHAR(255) | NOT NULL    | Référence commande |
| fournisseur        | VARCHAR(255) | NOT NULL    | Fournisseur |
| boulanger          | VARCHAR(255) | NOT NULL    | Boulanger |
| entrepot           | VARCHAR(255) | NOT NULL    | Entrepôt |
| produits           | VARCHAR(255) | NOT NULL    | Produits commandés |
| devis              | VARCHAR(255) | NOT NULL    | Référence devis |
| quantiteRecue      | BOOL         | NOT NULL    | Quantité reçue ? |
| destinationType    | VARCHAR(255) | NOT NULL    | Type de destination |
| bonTransportCree   | BOOL         | NOT NULL    | Bon de transport créé |
| dateCommande       | DATE         | NOT NULL    | Date de commande |
| typeCamion         | VARCHAR(255) | NOT NULL    | Type de camion |
| commentaire        | VARCHAR(255) | NOT NULL    | Commentaire |
| statutPaiement     | VARCHAR(255) | NOT NULL    | Statut paiement |
| statutPreparation  | VARCHAR(255) | NOT NULL    | Statut préparation |
| statut             | VARCHAR(255) | NOT NULL    | Statut global |

---

## Table **Approvisionnement**
| Champ       | Type          | Contraintes | Description |
|-------------|--------------|-------------|-------------|
| _id         | INTEGER      | PK, NOT NULL| Identifiant unique |
| nom         | VARCHAR(255) | NOT NULL    | Nom |
| prenom      | VARCHAR(255) | NOT NULL    | Prénom |
| email       | VARCHAR(255) | NOT NULL    | Email |
| motDePasse  | VARCHAR(255) | NOT NULL    | Mot de passe |
| entrepot    | VARCHAR(255) | NOT NULL    | Entrepôt |
| role        | VARCHAR(255) | NOT NULL    | Rôle |
| actif       | BOOL         | NOT NULL    | Statut actif |
| resetToken  | VARCHAR(255) | NOT NULL    | Jeton de reset |

---

## Table **PersonnelMaintenance**
| Champ       | Type          | Contraintes | Description |
|-------------|--------------|-------------|-------------|
| _id         | INTEGER      | PK, NOT NULL| Identifiant unique |
| nom         | VARCHAR(255) | NOT NULL    | Nom |
| prenom      | VARCHAR(255) | NOT NULL    | Prénom |
| email       | VARCHAR(255) | NOT NULL    | Email |
| motDePasse  | VARCHAR(255) | NOT NULL    | Mot de passe |
| role        | VARCHAR(255) | NOT NULL    | Rôle |
| actif       | VARCHAR(255) | NOT NULL    | Statut actif |
| entrepot    | VARCHAR(255) | NOT NULL    | Entrepôt |

---

## Table **PreparateurCommande**
| Champ       | Type          | Contraintes | Description |
|-------------|--------------|-------------|-------------|
| _id         | INTEGER      | PK, NOT NULL| Identifiant unique |
| nom         | VARCHAR(255) | NOT NULL    | Nom |
| prenom      | VARCHAR(255) | NOT NULL    | Prénom |
| email       | VARCHAR(255) | NOT NULL    | Email |
| motDePasse  | VARCHAR(255) | NOT NULL    | Mot de passe |
| telephone   | VARCHAR(10)  | NOT NULL    | Téléphone |
| site        | VARCHAR(255) | NOT NULL    | Site associé |
| minoterie   | VARCHAR(255) | NOT NULL    | Minoterie associée |
| entrepot    | VARCHAR(255) | NOT NULL    | Entrepôt associé |
| role        | VARCHAR(255) | NOT NULL    | Rôle |
| actif       | BOOL         | NOT NULL    | Statut actif |
