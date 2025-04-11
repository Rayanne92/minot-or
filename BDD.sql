CREATE DATABASE Boulangerie;
USE Boulangerie;

-- Table Societe
CREATE TABLE Societe (
    id_Societe INT PRIMARY KEY,
    nom VARCHAR(255)
);

-- Table Administrateur
CREATE TABLE Administrateur (
    id_administrateur INT PRIMARY KEY,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    email VARCHAR(255),
    telephone VARCHAR(20),
    mot_de_passe VARCHAR(255)
);

-- Table Client
CREATE TABLE Client (
    id_client INT PRIMARY KEY,
    typeClient VARCHAR(50),
    nom VARCHAR(255),
    prenom VARCHAR(255),
    telephone VARCHAR(20),
    email VARCHAR(255),
    adresse VARCHAR(255),
    id_Societe INT,
    FOREIGN KEY (id_Societe) REFERENCES Societe(id_Societe)
);

-- Table Devis
CREATE TABLE Devis (
    idDevis INT PRIMARY KEY,
    Etat VARCHAR(50),
    nomProduit VARCHAR(255),
    Description TEXT,
    Quantite FLOAT,
    id_client INT,
    FOREIGN KEY (id_client) REFERENCES Client(id_client)
);

-- Table Produit
CREATE TABLE Produit (
    id_produit INT PRIMARY KEY,
    nom_produit VARCHAR(255),
    description TEXT,
    stock INT,
    prix INT
);

-- Table Fournisseur
CREATE TABLE Fournisseur (
    idFournisseur INT PRIMARY KEY,
    nomFournisseur VARCHAR(255),
    QuantitedeProduit FLOAT,
    NomProduitFournisseur VARCHAR(255),
    EtatCommandeFournisseur VARCHAR(50)
);

-- Table Commande
CREATE TABLE Commande (
    id_commande INT PRIMARY KEY,
    date_commande DATE,
    heure_commande TIME,
    id_client INT,
    quantite INT,
    id_plat INT,
    adresse_livraison TEXT,
    FOREIGN KEY (id_client) REFERENCES Client(id_client)
);

-- Table Facture
CREATE TABLE Facture (
    id_facture INT PRIMARY KEY,
    id_commande INT,
    montant_total DECIMAL(10,2),
    dateFacture DATETIME,
    typeClient VARCHAR(50),
    nomClient VARCHAR(255),
    prenomClient VARCHAR(255),
    nomSociete VARCHAR(255),
    FOREIGN KEY (id_commande) REFERENCES Commande(id_commande)
);

-- Table Employe
CREATE TABLE Employe (
    id_employe INT PRIMARY KEY,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    Poste VARCHAR(50),
    Salaire INT,
    Email VARCHAR(255),
    MotdePasse VARCHAR(255)
);

-- Table Livreur
CREATE TABLE Livreur (
    id_livreur INT PRIMARY KEY,
    commande_id INT,
    adresse_livraison TEXT,
    statut_livraison VARCHAR(50),
    date_livraison DATE,
    FOREIGN KEY (commande_id) REFERENCES Commande(id_commande)
);

-- Table Stock
CREATE TABLE Stock (
    id_stock INT PRIMARY KEY,
    id_produit INT,
    quantite_disponible INT,
    date DATE,
    FOREIGN KEY (id_produit) REFERENCES Produit(id_produit)
);

-- Table Panier
CREATE TABLE Panier (
    idPanier INT PRIMARY KEY,
    Total INT,
    Quantite INT,
    PrixLivraison DECIMAL(10,2),
    Totalttc INT
);

-- Table Bordereau
CREATE TABLE Bordereau (
    idBordereau INT PRIMARY KEY,
    Reference VARCHAR(255),
    QrCode VARCHAR(255),
    DateCreation DATE,
    id_commande INT,
    FOREIGN KEY (id_commande) REFERENCES Commande(id_commande)
);

-- Table Entrepot
CREATE TABLE Entrepot (
    idEntrepot INT PRIMARY KEY,
    nomEntrepot VARCHAR(255)
);

-- Table ListesEnvies
CREATE TABLE ListesEnvies (
    idListesEnvies INT PRIMARY KEY,
    total INT,
    idProduit INT,
    FOREIGN KEY (idProduit) REFERENCES Produit(id_produit)
);
