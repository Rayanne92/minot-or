-- Création de la base de données
CREATE DATABASE IF NOT EXISTS GestionBoulangerie4;
USE GestionBoulangerie4;

-- Table Administrateur
CREATE TABLE Administrateur (
    id_administrateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telephone VARCHAR(15),
    mot_de_passe VARCHAR(255) NOT NULL
);

-- Table Boulangerie
CREATE TABLE Boulangerie (
    id_boulangerie INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    telephone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    adresse VARCHAR(255)
);

-- Table Menu
CREATE TABLE Menu (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nom_menu VARCHAR(100) NOT NULL,
    description TEXT,
    id_boulangerie INT NOT NULL,
    FOREIGN KEY (id_boulangerie) REFERENCES Boulangerie(id_boulangerie) ON DELETE CASCADE
);

-- Table Plat
CREATE TABLE Plat (
    id_plat INT AUTO_INCREMENT PRIMARY KEY,
    nom_plat VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(10, 2) NOT NULL,
    id_menu INT NOT NULL,
    FOREIGN KEY (id_menu) REFERENCES Menu(id_menu) ON DELETE CASCADE
);

-- Table Client
CREATE TABLE Client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telephone VARCHAR(15),
    adresse VARCHAR(255)
);

-- Table Commande
CREATE TABLE Commande (
    id_commande INT AUTO_INCREMENT PRIMARY KEY,
    date_commande DATE NOT NULL,
    heure_commande TIME NOT NULL,
    adresse_livraison TEXT,
    id_client INT NOT NULL,
    FOREIGN KEY (id_client) REFERENCES Client(id_client) ON DELETE CASCADE
);

-- Table CommandePlat (Table intermédiaire pour N:M)
CREATE TABLE CommandePlat (
    id_commande INT NOT NULL,
    id_plat INT NOT NULL,
    quantite INT NOT NULL,
    PRIMARY KEY (id_commande, id_plat),
    FOREIGN KEY (id_commande) REFERENCES Commande(id_commande) ON DELETE CASCADE,
    FOREIGN KEY (id_plat) REFERENCES Plat(id_plat) ON DELETE CASCADE
);

-- Table Facture
CREATE TABLE Facture (
    id_facture INT AUTO_INCREMENT PRIMARY KEY,
    id_commande INT NOT NULL,
    montant_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_commande) REFERENCES Commande(id_commande) ON DELETE CASCADE
);

-- Table Produit
CREATE TABLE Produit (
    id_produit INT AUTO_INCREMENT PRIMARY KEY,
    nom_produit VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(10, 2) NOT NULL
);

-- Table Stock
CREATE TABLE Stock (
    id_stock INT AUTO_INCREMENT PRIMARY KEY,
    id_produit INT NOT NULL,
    quantite_disponible INT NOT NULL,
    date_mise_a_jour DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_produit) REFERENCES Produit(id_produit) ON DELETE CASCADE
);

-- Table Employé
CREATE TABLE Employe (
    id_employe INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    poste VARCHAR(50),
    salaire DECIMAL(10, 2)
);

-- Table Livreur
CREATE TABLE Livreur (
    id_livreur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    telephone VARCHAR(15) NOT NULL,
    id_commande INT,
    adresse_livraison TEXT,
    date_livraison DATE,
    statut_livraison VARCHAR(50),
    FOREIGN KEY (id_commande) REFERENCES Commande(id_commande) ON DELETE SET NULL
);
