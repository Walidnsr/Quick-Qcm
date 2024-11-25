

# **Quick QCM**

## **Description**
Quick QCM est une application web destinée à simplifier la création, la gestion et la correction des questionnaires à choix multiples (QCM). L'application offre des fonctionnalités avancées telles que la correction automatisée basée sur le traitement d'image, un historique de QCM et une gestion centralisée des résultats.

---

## **Fonctionnalités principales**
- **Création intuitive de QCM** : Interface simple pour définir des questions et réponses.
- **Correction automatisée** : Traitement des réponses scannées pour générer des résultats précis.
- **Gestion centralisée des données** : Stockage des QCM, résultats et rapports.
- **Historique des QCM** : Réutilisation et modification des questionnaires.


<p align="center">
  <img src="Screenshots%20du%20site/Acc1.png" alt="Accueil 1" width="45%">
  <img src="Screenshots%20du%20site/Professeur%20login.png" alt="Login Professeur" width="45%">
  
</p>

<p align="center">
  <img src="Screenshots%20du%20site/Acc2.png" alt="Accueil 2" width="45%">
  <img src="Screenshots%20du%20site/Compte%20d'utilisateur.png" alt="Compte Utilisateur" width="45%">
</p>

---

## **Prérequis**
Pour exécuter le projet, vous devez disposer des éléments suivants :

### **1. Environnement serveur**
- **XAMPP** ou tout autre serveur intégrant Apache, PHP et MySQL :
  - Télécharger et installer depuis [Apache Friends](https://www.apachefriends.org/).
  - Vérifiez que les modules **Apache** et **MySQL** peuvent être démarrés.

### **2. Logiciels nécessaires**
- **Navigateur web** : Chrome, Firefox, ou tout autre navigateur moderne.
- **Git** : Pour cloner le projet depuis GitHub. Téléchargez-le depuis [Git](https://git-scm.com/).

### **3. Langages et frameworks**
- **PHP** : Utilisé pour le backend.
- **MySQL** : Pour gérer la base de données.
- **Python** : Nécessaire pour les scripts de traitement d'image dans le dossier `Correction`.

### **4. Bibliothèques Python requises**
Installez les bibliothèques suivantes si vous utilisez les scripts Python pour la correction :
- **OpenCV** : Pour le traitement d'images.
  ```bash
  pip install opencv-python
  ```
- **EasyOCR** : Pour l'extraction d'informations des réponses scannées.
  ```bash
  pip install easyocr
  ```

---

## **Installation et configuration**

### **Étape 1 : Cloner le dépôt GitHub**
1. Ouvrez votre terminal ou invite de commandes.
2. Clonez le dépôt avec la commande suivante :
   ```bash
   git clone https://github.com/Walidnsr/Quick-Qcm.git
   ```
   Le projet sera cloné sous le nom `Quick-Qcm`.

---

### **Étape 2 : Placer le projet dans le dossier XAMPP**
1. Déplacez le dossier cloné `Quick-Qcm` dans le répertoire `htdocs` de XAMPP.
   Exemple :
   ```
   C:\xampp\htdocs\Quick-Qcm
   ```

---

### **Étape 3 : Configurer la base de données**
1. Lancez XAMPP et démarrez les modules **Apache** et **MySQL**.
2. Ouvrez votre navigateur et accédez à :
   ```
   http://localhost/phpmyadmin
   ```
3. Créez une base de données nommée **`projetqcm`**.
4. Importez le fichier SQL depuis :
   ```
   Quick-Qcm/QuickQcm-site-api/Base de donnees/projetqcm.sql
   ```
   - Cliquez sur **Importer**, sélectionnez le fichier SQL et exécutez.

---

### **Étape 4 : Configurer les fichiers PHP**
Ouvrez le fichier `QuickQcm-site-api/traitement.php` et configurez les paramètres de connexion à la base de données si nécessaire :
```php
$host = "localhost";
$user = "root";
$password = "";
$database = "projetqcm";
```

---

### **Étape 5 : Accéder à l'application**
Dans votre navigateur, accédez à l'application via :
```
http://localhost/Quick-Qcm/QuickQcm-site-api/index.html
```

---

## **Identifiant de test**
Pour tester le projet, utilisez l'identifiant suivant :

- **Email** : `hatim.naqos@junia.com`
- **Mot de passe** : `motdepasse1`

---

## **Arborescence complète du projet**
Voici la structure complète du projet pour une meilleure vue d'ensemble :

```
Quick-Qcm
├─ LICENSE
├─ QuickQcm-site-api
│  ├─ Acc.css
│  ├─ Acc.php
│  ├─ Base de donnees
│  │  └─ projetqcm.sql
│  ├─ contact_us.php
│  ├─ Correction
│  │  ├─ .pdf
│  │  ├─ copies
│  │  │  ├─ pages0.jpg
│  │  │  ├─ pages1.jpg
│  │  │  ├─ pages2.jpg
│  │  │  ├─ pages3.jpg
│  │  │  ├─ pages4.jpg
│  │  │  ├─ pages5.jpg
│  │  │  ├─ pages6.jpg
│  │  │  ├─ pages7.jpg
│  │  │  └─ pages8.jpg
│  │  ├─ Correction.py
│  │  ├─ Correction_QCM.py
│  │  ├─ IMG_0002.pdf
│  │  ├─ Listes etudiants excel
│  │  │  ├─ JM Soutenance - Email.xlsx
│  │  │  ├─ JM Soutenance.xlsx
│  │  │  ├─ JM Soutenance_Mathématiques_H. NAQOS.xlsx
│  │  │  ├─ JM1 - Email.xlsx
│  │  │  ├─ JM1.xlsx
│  │  │  ├─ JM2 - Email.xlsx
│  │  │  ├─ JM2.xlsx
│  │  │  ├─ JM3 - Email.xlsx
│  │  │  ├─ JM3 HEI - Email.xlsx
│  │  │  ├─ JM3 HEI.xlsx
│  │  │  ├─ JM3 ISEN - Email.xlsx
│  │  │  ├─ JM3 ISEN.xlsx
│  │  │  ├─ JM3.xlsx
│  │  │  ├─ JM3_Mathématique_Hatim Naqos.xlsx
│  │  │  ├─ qcm_data21_05_24_59_58.xlsx
│  │  │  └─ ~$JM3_Mathématique_Hatim Naqos.xlsx
│  │  └─ Listes etudiants excelV2
│  │     ├─ JM Soutenance - Email.xlsx
│  │     ├─ JM Soutenance.xlsx
│  │     ├─ JM Soutenance_Mathématiques_H. NAQOS.xlsx
│  │     ├─ JM1 - Email.xlsx
│  │     ├─ JM1.xlsx
│  │     ├─ JM2 - Email.xlsx
│  │     ├─ JM2.xlsx
│  │     ├─ JM3 - Email.xlsx
│  │     ├─ JM3 HEI - Email.xlsx
│  │     ├─ JM3 HEI.xlsx
│  │     ├─ JM3 ISEN - Email.xlsx
│  │     ├─ JM3 ISEN.xlsx
│  │     ├─ JM3.xlsx
│  │     └─ JM3_Info_S. HDAFA.xlsx
│  ├─ Correction.php
│  ├─ Creation.php
│  ├─ Error404
│  │  ├─ css
│  │  │  ├─ font-awesome.min.css
│  │  │  └─ style.css
│  │  └─ fonts
│  │     ├─ fontawesome-webfont.eot
│  │     ├─ fontawesome-webfont.svg
│  │     ├─ fontawesome-webfont.ttf
│  │     ├─ fontawesome-webfont.woff
│  │     ├─ fontawesome-webfont.woff2
│  │     └─ FontAwesome.otf
│  ├─ Error404.html
│  ├─ fichiers_json
│  ├─ historiqueqcm.php
│  ├─ images
│  │  ├─ bgg.png
│  │  ├─ bg_1.jpg
│  │  ├─ bg_2.jpg
│  │  ├─ bg_3.jpg
│  │  ├─ bg_4.jpg
│  │  ├─ logo.png
│  │  ├─ logo2.png
│  │  └─ prof.png
│  ├─ index.html
│  ├─ latexQCM
│  │  ├─ .json
│  │  ├─ Json_lecture.py
│  │  ├─ junia_logo.jpg
│  │  ├─ Listes etudiants excel
│  │  │  ├─ JM Soutenance - Email.xlsx
│  │  │  ├─ JM Soutenance.xlsx
│  │  │  ├─ JM Soutenance_Mathématiques_H. NAQOS.xlsx
│  │  │  ├─ JM1 - Email.xlsx
│  │  │  ├─ JM1.xlsx
│  │  │  ├─ JM2 - Email.xlsx
│  │  │  ├─ JM2.xlsx
│  │  │  ├─ JM3 - Email.xlsx
│  │  │  ├─ JM3 HEI - Email.xlsx
│  │  │  ├─ JM3 HEI.xlsx
│  │  │  ├─ JM3 ISEN - Email.xlsx
│  │  │  ├─ JM3 ISEN.xlsx
│  │  │  ├─ JM3.xlsx
│  │  │  ├─ JM3_Info_S. HDAFA.xlsx
│  │  │  └─ ~$JM3_Mathématique_Hatim Naqos.xlsx
│  │  ├─ logo.png
│  │  ├─ Questionnaire.bcf
│  │  ├─ Questionnaire.pdf
│  │  ├─ Questionnaire.run.xml
│  │  ├─ Questionnaire.tex
│  │  ├─ reponses.png
│  │  └─ structure.tex
│  ├─ loginp.php
│  ├─ login_css
│  │  ├─ bootstrap.min.css
│  │  ├─ owl.carousel.min.css
│  │  └─ style.css
│  ├─ logout.php
│  ├─ modifier_profil.php
│  ├─ profil.php
│  ├─ profilstyle.css
│  ├─ stylecreation.css
│  ├─ test_correc.php
│  ├─ traitement.php
│  ├─ traitementhistorique.php
│  ├─ traitement_correction2.php
│  └─ variable.txt
├─ README.md
└─ Screenshots du site
   ├─ Accueil.1.png
   ├─ Accueil.2.png
   ├─ Compte d'utilisateur 2.png
   ├─ Compte d'utilisateur.png
   ├─ Correction QCM- localhost.png
   ├─ Correction QCM.png
   ├─ Creation Qcm.png
   └─ Professeur login.png
```

---

## **Utilisation**

### **1. Création de QCM**
1. Connectez-vous à l'application avec l'identifiant de test.
2. Accédez à **Création de QCM**.
3. Remplissez les informations nécessaires : nom du test, questions, réponses.
4. Générez et téléchargez un PDF contenant le QCM.

---

### **2. Correction de QCM**
1. Scannez les réponses des étudiants.
2. Importez les fichiers scannés via **Correction QCM**.
3. Le système attribue les notes automatiquement et génère un fichier Excel des résultats.

---

### **3. Historique des QCM**
1. Accédez à **Historique**.
2. Recherchez, affichez ou téléchargez un QCM existant pour réutilisation.

---

## **Commandes Git utiles**
- **Vérifiez l'état des modifications :**
  ```bash
  git status
  ```
- **Ajoutez les modifications :**
  ```bash
  git add .
  ```
- **Validez les modifications :**
  ```bash
  git commit -m "Ajout ou mise à jour du projet"
  ```
- **Poussez vers GitHub :**
  ```bash
  git push origin main
  ```

