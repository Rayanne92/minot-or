# Commandes utilisées pour créer le Backend

## Initialisation du projet
```bash
mkdir backend
cd backend
npm init -y
```

## Installation des dépendances principales

### Framework web
```bash
npm install express mongoose
```

### Sécurité
```bash
npm install dotenv helmet cors hpp xss-clean express-rate-limit express-mongo-sanitize
```

### Authentification & validation
```bash
npm install bcrypt jsonwebtoken joi
```

### Gestion de fichiers & cloud
```bash
npm install multer multer-s3 @aws-sdk/client-s3 @aws-sdk/s3-request-presigner aws-sdk
```

### Utilitaires
```bash
npm install axios moment nodemailer pdfkit qrcode cron node-cron
```

## Dépendances de développement
```bash
npm install --save-dev nodemon
```

## Script de démarrage
Dans `package.json`, ajouter :
```json
"scripts": {
  "start": "node index.js",
  "dev": "nodemon index.js"
}
```
