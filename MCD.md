# Requête MCD pour Minot’Or

## Contexte  
Le MCD représente le fonctionnement global de l'entreprise Minot’Or, incluant les relations entre les acteurs (fournisseurs, clients, collaborateurs) et les processus clés (transport, gestion des stocks, collecte des invendus).

---

## Entités principales
1. **Client**  
   - **Attributs** : ID_Client, Nom, Type (Artisan/Industriel), Contact.

2. **Fournisseur**  
   - **Attributs** : ID_Fournisseur, Nom, Type (Minoterie/Moulin), Contact.

3. **Collaborateur**  
   - **Attributs** : ID_Collaborateur, Nom, Poste, Service (Commercial, Approvisionnement, etc.).

4. **Produit**  
   - **Attributs** : ID_Produit, Nom, Type (Vrac/Palette), Poids, Prix.

5. **Commande**  
   - **Attributs** : ID_Commande, Date, Statut (En cours/Livré/Annulé), Total.

6. **Livraison**  
   - **Attributs** : ID_Livraison, ID_Commande, Date, Coût, Type (Direct/Entrepôt).

7. **Stock**  
   - **Attributs** : ID_Entrepôt, ID_Produit, Quantité_Disponible.

8. **Entrepôt**  
   - **Attributs** : ID_Entrepôt, Adresse, Capacité.

---

## Relations principales
1. **Client passe des Commandes**  
   - **Multiplicité** : Un client peut passer plusieurs commandes, mais une commande appartient à un seul client.

2. **Commande contient des Produits**  
   - **Multiplicité** : Une commande peut inclure plusieurs produits.

3. **Fournisseur fournit des Produits**  
   - **Multiplicité** : Un fournisseur peut fournir plusieurs produits.

4. **Livraison réalise une Commande**  
   - **Multiplicité** : Une livraison correspond à une commande unique.

5. **Produit est stocké dans un Entrepôt**  
   - **Multiplicité** : Un produit peut être dans plusieurs entrepôts, chaque entrepôt peut contenir plusieurs produits.

6. **Collaborateur travaille dans un Service**  
   - **Multiplicité** : Chaque collaborateur est affecté à un seul service.

7. **Service gère des Processus**  
   - **Exemple** : Le Service Commercial gère les Commandes.

---

Ce MCD synthétise les processus essentiels et les relations de l'entreprise Minot’Or pour une utilisation sur Diagramming AI.
