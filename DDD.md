# Dictionnaire de Données - Gestion d'une Boulangerie

## 1. Table **Societe**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_Societe  | INT  | PK |
| nom         | VARCHAR(255) | |

## 2. Table **Administrateur**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_administrateur  | INT  | PK |
| nom         | VARCHAR(255) | |
| prenom      | VARCHAR(255) | |
| email       | VARCHAR(255) | |
| telephone   | VARCHAR(20)  | |
| mot_de_passe | VARCHAR(255) | |

## 3. Table **Client**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_client   | INT  | PK |
| typeClient  | VARCHAR(50) | |
| nom         | VARCHAR(255) | |
| prenom      | VARCHAR(255) | |
| telephone   | VARCHAR(20)  | |
| email       | VARCHAR(255) | |
| adresse     | VARCHAR(255) | |
| id_Societe  | INT  | FK (Societe) |

## 4. Table **Devis**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| idDevis     | INT  | PK |
| Etat        | VARCHAR(50) | |
| nomProduit  | VARCHAR(255) | |
| Description | TEXT | |
| Quantite    | FLOAT | |
| id_client   | INT | FK (Client) |

## 5. Table **Produit**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_produit  | INT  | PK |
| nom_produit | VARCHAR(255) | |
| description | TEXT | |
| stock       | INT  | |
| prix        | INT  | |

## 6. Table **Fournisseur**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| idFournisseur | INT  | PK |
| nomFournisseur | VARCHAR(255) | |
| QuantitedeProduit | FLOAT | |
| NomProduitFournisseur | VARCHAR(255) | |
| EtatCommandeFournisseur | VARCHAR(50) | |

## 7. Table **Commande**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_commande   | INT  | PK |
| date_commande | DATE | |
| heure_commande | TIME | |
| id_client     | INT  | FK (Client) |
| quantite      | INT  | |
| id_plat       | INT  | |
| adresse_livraison | TEXT | |

## 8. Table **Facture**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_facture   | INT  | PK |
| id_commande  | INT  | FK (Commande) |
| montant_total | DECIMAL(10,2) | |
| dateFacture  | DATETIME | |
| typeClient   | VARCHAR(50) | |
| nomClient    | VARCHAR(255) | |
| prenomClient | VARCHAR(255) | |
| nomSociete   | VARCHAR(255) | |

## 9. Table **Employe**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_employe  | INT  | PK |
| nom         | VARCHAR(255) | |
| prenom      | VARCHAR(255) | |
| Poste       | VARCHAR(50) | |
| Salaire     | INT  | |
| Email       | VARCHAR(255) | |
| MotdePasse  | VARCHAR(255) | |

## 10. Table **Livreur**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_livreur  | INT  | PK |
| commande_id | INT  | FK (Commande) |
| adresse_livraison | TEXT | |
| statut_livraison | VARCHAR(50) | |
| date_livraison | DATE | |

## 11. Table **Stock**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| id_stock  | INT  | PK |
| id_produit | INT  | FK (Produit) |
| quantite_disponible | INT | |
| date | DATE | |

## 12. Table **Panier**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| idPanier  | INT  | PK |
| Total     | INT  | |
| Quantite  | INT  | |
| PrixLivraison | DECIMAL(10,2) | |
| Totalttc  | INT  | |

## 13. Table **Bordereau**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| idBordereau  | INT  | PK |
| Reference    | VARCHAR(255) | |
| QrCode       | VARCHAR(255) | |
| DateCreation | DATE | |
| id_commande  | INT | FK (Commande) |

## 14. Table **Entrepot**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| idEntrepot  | INT  | PK |
| nomEntrepot | VARCHAR(255) | |

## 15. Table **ListesEnvies**
| Nom Attribut | Type | Clé |
|-------------|------|----|
| idListesEnvies  | INT  | PK |
| total          | INT  | |
| idProduit      | INT  | FK (Produit) |
