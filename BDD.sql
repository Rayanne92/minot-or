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


#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: customer
#------------------------------------------------------------

CREATE TABLE customer(
        id_customer      Int  Auto_increment  NOT NULL ,
        company_customer Varchar (50) NOT NULL ,
        name_customer    Varchar (50) NOT NULL ,
        surname_customer Varchar (50) NOT NULL ,
        phone_customer   Varchar (50) NOT NULL ,
        mail_customer    Varchar (50) NOT NULL ,
        street           Varchar (255) NOT NULL ,
        zip_code         Varchar (10) NOT NULL ,
        city             Varchar (255) NOT NULL ,
        country          Varchar (255) NOT NULL ,
        type_customer    Varchar (50) NOT NULL
	,CONSTRAINT customer_PK PRIMARY KEY (id_customer)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: salesman
#------------------------------------------------------------

CREATE TABLE salesman(
        id_salesman      Int  Auto_increment  NOT NULL ,
        name_salesman    Varchar (50) NOT NULL ,
        surname_salesman Varchar (50) NOT NULL ,
        phone_salesman   Varchar (50) NOT NULL ,
        mail_salesman    Varchar (50) NOT NULL
	,CONSTRAINT salesman_PK PRIMARY KEY (id_salesman)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: transaction
#------------------------------------------------------------

CREATE TABLE transaction(
        id_transaction              Int  Auto_increment  NOT NULL ,
        type_transaction            Enum ("Wishlist","Quote","Order") NOT NULL ,
        creation_date_transaction   Datetime NOT NULL ,
        total_amount_transaction    Decimal NOT NULL ,
        payment_status_transaction  Enum ("Unpaid","Paid") NOT NULL ,
        payment_method_transaction  Enum ("Bank Card","Bank Transfer","Bank Cashier","Cash") NOT NULL ,
        payment_date_transaction    Datetime NOT NULL ,
        salesman_transaction        Varchar (10) NOT NULL ,
        salesman_choice_transaction Enum ("In progress","Completed","To be processed") NOT NULL ,
        customer_choice_transaction Enum ("Accept","Refuse") NOT NULL ,
        customer_review_transaction Varchar (50) NOT NULL ,
        id_customer                 Int NOT NULL ,
        id_salesman                 Int NOT NULL
	,CONSTRAINT transaction_PK PRIMARY KEY (id_transaction)

	,CONSTRAINT transaction_customer_FK FOREIGN KEY (id_customer) REFERENCES customer(id_customer)
	,CONSTRAINT transaction_salesman0_FK FOREIGN KEY (id_salesman) REFERENCES salesman(id_salesman)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: stock
#------------------------------------------------------------

CREATE TABLE stock(
        id_stock          Int  Auto_increment  NOT NULL ,
        available_stock   Decimal NOT NULL ,
        reserved_stock    Decimal NOT NULL ,
        last_update_stock Datetime NOT NULL
	,CONSTRAINT stock_PK PRIMARY KEY (id_stock)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: warehouse
#------------------------------------------------------------

CREATE TABLE warehouse(
        id_warehouse       Int  Auto_increment  NOT NULL ,
        name_warehouse     Varchar (50) NOT NULL ,
        street             Varchar (255) NOT NULL ,
        zip_code           Varchar (10) NOT NULL ,
        city               Varchar (255) NOT NULL ,
        country            Varchar (255) NOT NULL ,
        type_warehouse     Varchar (50) NOT NULL ,
        capacity_warehouse Decimal NOT NULL
	,CONSTRAINT warehouse_PK PRIMARY KEY (id_warehouse)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: supplier
#------------------------------------------------------------

CREATE TABLE supplier(
        id_supplier      Int  Auto_increment  NOT NULL ,
        name_supplier    Varchar (50) NOT NULL ,
        surname_supplier Varchar (50) NOT NULL ,
        phone_supplier   Varchar (50) NOT NULL ,
        mail_supplier    Varchar (50) NOT NULL
	,CONSTRAINT supplier_PK PRIMARY KEY (id_supplier)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: deliveryman
#------------------------------------------------------------

CREATE TABLE deliveryman(
        id_deliveryman              Int  Auto_increment  NOT NULL ,
        name_deliveryman            Varchar (50) NOT NULL ,
        surname_deliveryman         Varchar (50) NOT NULL ,
        phone_deliveryman           Varchar (50) NOT NULL ,
        mail_deliveryman            Varchar (50) NOT NULL ,
        driving_license_deliveryman Enum ("B","C","CE") NOT NULL
	,CONSTRAINT deliveryman_PK PRIMARY KEY (id_deliveryman)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: vehicle
#------------------------------------------------------------

CREATE TABLE vehicle(
        id_vehicle              Int  Auto_increment  NOT NULL ,
        registration_vehicle    Varchar (10) NOT NULL ,
        type_vehicle            Varchar (50) NOT NULL ,
        capacity_vehicle        Decimal NOT NULL ,
        availability_vehicle    Bool NOT NULL ,
        driving_license_vehicle Enum ("B","C","CE") NOT NULL
	,CONSTRAINT vehicle_PK PRIMARY KEY (id_vehicle)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: operatorman
#------------------------------------------------------------

CREATE TABLE operatorman(
        id_operatorman            Int  Auto_increment  NOT NULL ,
        type_maintain_operatorman Varchar (50) NOT NULL
	,CONSTRAINT operatorman_PK PRIMARY KEY (id_operatorman)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: minotier
#------------------------------------------------------------

CREATE TABLE minotier(
        id_minotier Int  Auto_increment  NOT NULL
	,CONSTRAINT minotier_PK PRIMARY KEY (id_minotier)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: product_type




	=======================================================================
	   Désolé, il faut activer cette version pour voir la suite du script ! 
	=======================================================================
