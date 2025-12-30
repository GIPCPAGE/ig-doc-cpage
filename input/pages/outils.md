# Installation des outils sur Windows sans droits administrateur

## 1. Installer Node.js en mode portable

1. Télécharger la version Windows ZIP de Node.js (LTS) depuis :
	https://nodejs.org/en/download
2. Extraire l’archive dans un dossier de votre choix (ex : `C:\Users\<votre_user>\nodejs`)
3. Ajouter ce dossier à la variable d’environnement PATH (temporairement pour la session) :
	```cmd
	set PATH=C:\Users\<votre_user>\nodejs;%PATH%
	```
4. Vérifier l’installation :
	```cmd
	node -v
	npm -v
	```

## 2. Installer Ruby et Jekyll en standalone

1. Télécharger Ruby portable (ex : https://github.com/oneclick/rubyinstaller2/releases → assets → ruby-[version]-x64-mingw-ucrt.7z)
2. Extraire dans `C:\Users\<votre_user>\ruby` et ajouter à votre PATH :
	```cmd
	set PATH=C:\Users\<votre_user>\ruby\bin;%PATH%
	```
3. Installer Bundler et Jekyll localement :
	```cmd
	gem install --user-install bundler jekyll
	set PATH=%USERPROFILE%\AppData\Roaming\Ruby\bin;%PATH%
	```
4. Vérifier :
	```cmd
	jekyll -v
	bundler -v
	```

## 3. Installer SUSHI (FSH) localement

1. Installer SUSHI dans le dossier courant (pas besoin d’admin) :
	```cmd
	npm install --prefix . -g fsh-sushi
	set PATH=%CD%\node_modules\.bin;%PATH%
	sushi -v
	```

## 4. Installer l’IG Publisher (FHIR)

1. Télécharger le JAR depuis :
	https://github.com/HL7/fhir-ig-publisher/releases/latest
2. Placer le fichier `publisher.jar` dans un dossier accessible (ex : `C:\Users\<votre_user>\fhir`)
3. Lancer avec Java portable (téléchargeable ici : https://adoptium.net/temurin/releases/?version=17)
	```cmd
	java -jar C:\Users\<votre_user>\fhir\publisher.jar -ig .
	```

## 5. Conseils généraux

- Utilisez des chemins sans espace ni accent.
- Pour automatiser, créez un fichier batch (.bat) avec les commandes ci-dessus.
- Pour chaque session, relancez les commandes `set PATH=...` si besoin.

> **Astuce** : Ces méthodes permettent d’installer et d’utiliser tous les outils FHIR IG sans droits administrateur sur Windows.
> **Conseil :** Pour l’utilisation optimale de ces outils, reportez-vous à la page [Bonnes pratiques](bonnes-pratiques.html).

# Outils et technologies IG FHIR

## FSH (FHIR Shorthand)
Langage dédié à la définition concise des profils, extensions, instances et autres artefacts FHIR.
- [Documentation FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/)
- [FSH School](https://fshschool.org/)

## SUSHI
Compilation des fichiers FSH en ressources FHIR (JSON/XML).
- Commande de base : `sushi .`
- Générer les snapshots : `sushi -s .`

## GoFSH
Conversion de ressources FHIR existantes (JSON/XML) en FSH.
- Commande de base : `gofsh .`
- Pour JSON et XML : `gofsh -t json-and-xml .`
- Comparaison JSON initial/généré : `gofsh --fshing-trip`

## IG Publisher
Génération du site web IG à partir de la structure de dossiers et fichiers (markdown, FSH, ressources, images…).
- [Documentation IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)
- Nécessite Java 17+ et Jekyll.

## Autres outils
- [HL7 IG Template Base](https://github.com/HL7/ig-template-base)
- [NPM Package Specification](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification)
- [Clinical Quality Language (CQL)](https://cql.hl7.org/)

Voir aussi la section "Liens utiles".