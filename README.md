# Projet fil rouge : Minot’Or  
**Version :** V1.1  
**Date :** 01/10/2024  

---

## Table des matières
1. [Contexte du projet](#section-1-contexte-du-projet)
   - [Avertissement](#11-avertissement)
   - [Notre société](#12-notre-société)
   - [Implantation géographique](#13-implantation-géographique)
   - [Quelques données du groupe](#14-quelques-données-du-groupe)
   - [La motivation de ce projet informatique](#15-la-motivation-de-ce-projet-informatique)
2. [Le projet](#section-2-le-projet)
   - [Finalité du projet](#21-finalité-du-projet)
   - [Nos prestations](#22-nos-prestations)
   - [Nos clients et fournisseurs](#23-nos-clients-et-fournisseurs)
   - [Nos collaborateurs](#24-nos-collaborateurs)
3. [Mesure de performances](#section-3-mesure-de-performances)
4. [Annexe : Calcul du prix d’une livraison](#section-4-annexe--calcul-du-prix-dune-livraison)
5. [Quelques cas d’utilisation](#section-5-quelques-cas-dutilisation)

---

## Section 1 : Contexte du projet

### 1.1 Avertissement
Ce projet est fictif. Il a été conçu pour couvrir les items de la formation CDA. Les équipes peuvent ajuster les fonctionnalités avec l'accord du formateur.

### 1.2 Notre société
Créée en 2005, Minot’Or est un intermédiaire entre les minoteries et les boulangeries. Grâce à une flotte de 450 véhicules et 41 entrepôts, elle assure un transport efficace en France et en Belgique. Un réseau pour la collecte des pains invendus permet de limiter le gaspillage.

### 1.3 Implantation géographique
Le siège social est à Nanterre, regroupant un entrepôt et le personnel administratif. Les entrepôts sont répartis en France et en Belgique.

### 1.4 Quelques données du groupe
- Année de création : 2005  
- Chiffre d'affaires annuel : 10 M €  
- Collaborateurs : 400  
- Clients : plus de 8000 depuis 2005  
- Flotte : 450 véhicules  

### 1.5 La motivation de ce projet informatique
L’ancien système est obsolète et coûteux à maintenir. L’objectif est de créer une nouvelle application informatique déployée sur :
- **Web** : pour les clients et collaborateurs internes (back-office).  
- **Mobile native** : pour les clients et livreurs.  
- **Desktop** : pour les analyses de performance.  

---

## Section 2 : Le projet

### 2.1 Finalité du projet
- Centraliser les processus d’achat, vente et gestion logistique via des applications modernes.
- Faciliter l’expérience utilisateur pour les clients (boulangers) et collaborateurs internes.

### 2.2 Nos prestations
- Transport de produits de minoteries vers des boulangeries ou entre nos entrepôts.
- Gestion des stocks dans 41 entrepôts.
- Collecte et revente de pains invendus.

### 2.3 Nos clients et fournisseurs

#### 2.3.1 Nos fournisseurs : Les minoteries et moulins artisanaux
- Les responsables approvisionnement gèrent les relations avec les minoteries.
- Modes de transport pris en charge :
  - Transport en vrac via camion monocuve.  
  - Transport de palettes (vers client ou entrepôt).  
- Collecte des pains invendus pour les revendre aux minoteries.

#### 2.3.2 Les boulangers
- **Types :** Artisans et industriels.
- **Fonctionnalités disponibles dans l’application Web :**
  - Consultation du catalogue produit.
  - Demande de devis et transformation en commande.
  - Planification des livraisons.
  - Signalement des invendus.  

### 2.4 Nos collaborateurs

#### 2.4.1 Service commercial
- Gestion des fournisseurs et produits.
- Création et traitement des devis.
- Calcul des prix (avec marges et frais ajustables).
- Utilise uniquement l’application Web.

#### 2.4.2 Service approvisionnement
- Gestion des stocks et demandes de transport.
- Réception et contrôle des livraisons des minoteries.
- Utilise uniquement l’application Web.

#### 2.4.3 Service préparation des commandes
- Réalisation des commandes client dans les entrepôts.
- Gestion des bordereaux de livraison (QR codes).
- Utilise l’application mobile pour le suivi.

#### 2.4.4 Livreurs
- Chargement des camions avec QR code.  
- Mise à jour des états des commandes (en cours, livré).
- Utilise une application mobile dédiée.

#### 2.4.5 Personnel de maintenance
- Entretien des camions cuves (nettoyages réguliers).  
- Mise à jour des statuts des véhicules via l’application Web.

---

## Section 3 : Mesure de performances

### 3.1 Finalité
- Collecte de données sur les pages visitées et leur fréquence.
- Analyse future des performances via des outils de data science.
- Première version simplifiée : stockage des visites et dates.

---

## Section 4 : Annexe : Calcul du prix d’une livraison

### 4.1 Principe
#### 4.1.1 Transport direct (minoterie → boulangerie)
**Camion monocuve (vrac)**  
- **Prix :** `Prix = coûtKilomètre x nbreKilomètre + fraisFixe`  
  - coûtKilomètre = 2,50 €  
  - fraisFixe = 175 €  

**Camion palettes**  
- **Prix :** `Prix = coûtKilomètre x nbreKilomètre + fraisFixe`  
  - coûtKilomètre = 1,25 €  
  - fraisFixe = 75 €

#### 4.1.2 Transport entre entrepôt et boulangerie
- **Prix :** `Prix = coûtKilomètre x nbreKilomètre + fraisFixe`  
  - fraisFixe = `Base + (Prkg x Poids)`  
    - Base = 50 €  
    - Prkg (prix par kg) = 0,05 €/kg  

---

## Section 5 : Quelques cas d’utilisation

### 5.1 Je suis boulanger, que puis-je faire avec l’application Minot’Or ?
1. Inscription et validation par un commercial.
2. Consultation des produits (avec prix ou demande de devis).
3. Création de devis et transformation en commande.  
4. Paiement hors application avec référence de commande.  

### 5.2 Je suis minotier, que puis-je faire avec l’application Minot’Or ?
- Non applicable (gestion uniquement par les responsables internes).

### 5.3 Je suis commercial, que puis-je faire ?
1. Gestion des fournisseurs et produits.
2. Traitement des devis clients.
3. Ajustement des prix, marges et frais de transport.

---
