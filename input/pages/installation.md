# Installation de Sushi, Jekyll et dépendances

> **Environnement CPage : Installation automatisée sur Windows 11 sans droits administrateur**
>
> Ce guide vous permet d’installer Node.js, Ruby, Jekyll, Git, Java, SUSHI, etc. en mode portable, sans droits admin, et de configurer le PATH pour la session utilisateur. Idéal pour les postes CPage standards.
>
> **Script automatisé :**
>
> ```powershell
> # Ouvrez PowerShell (en mode utilisateur)
> Invoke-WebRequest -Uri "https://raw.githubusercontent.com/NicolasMoreauCPage/ig-fhir-doc-cpage/main/scripts/install-cpage-env.ps1" -OutFile "$env:USERPROFILE\\install-cpage-env.ps1"
> powershell -ExecutionPolicy Bypass -File "$env:USERPROFILE\\install-cpage-env.ps1"
> ```
>
> **Si le script n’est pas disponible, suivez les étapes manuelles :**
>
> 1. **Node.js portable** : Téléchargez [nvm-windows portable](https://github.com/coreybutler/nvm-windows/releases), décompressez dans `C:\Users\<user>\nvm`, puis :
>    ```powershell
>    cd $env:USERPROFILE\nvm
>    .\nvm.exe install lts
>    .\nvm.exe use lts
>    $env:PATH = "$env:USERPROFILE\nvm;$env:USERPROFILE\nvm\\nodejs\\node-vXX.X.X-win-x64;$env:PATH"
>    ```
> 2. **Git portable** : Téléchargez [Git Portable](https://git-scm.com/download/win), décompressez dans `git-portable`, ajoutez `git-portable\cmd` au PATH.
> 3. **Ruby portable** : Téléchargez [RubyInstaller portable](https://rubyinstaller.org/downloads/), décompressez dans `ruby-portable`, ajoutez `ruby-portable\bin` au PATH.
> 4. **Jekyll et Bundler** :
>    ```powershell
>    gem install --user-install jekyll bundler
>    $env:PATH = "$env:USERPROFILE\.gem\ruby\<version>\bin;$env:PATH"
>    ```
> 5. **Java portable** : Téléchargez [Adoptium JDK zip](https://adoptium.net/temurin/releases/?version=17), décompressez dans `jdk-portable`, ajoutez `jdk-portable\bin` au PATH.
> 6. **SUSHI (FSH)** :
>    ```powershell
>    npm install --save-dev fsh-sushi
>    npx sushi --version
>    ```
>
> **Pour rendre le PATH persistant** :
> ```powershell
> [Environment]::SetEnvironmentVariable("PATH", "<tous_les_chemins>;" + [Environment]::GetEnvironmentVariable("PATH", "User"), "User")
> ```
>
> **Vérification** :
> ```powershell
> node --version
> npm --version
> git --version
> ruby --version
> jekyll --version
> java -version
> npx sushi --version
> ```
>
> Si chaque commande retourne une version, l’environnement est prêt pour travailler sur les IG FHIR CPage.

---

## 1. Prérequis communs


### Node.js

- **Site officiel** : [https://nodejs.org/](https://nodejs.org/)
- **Sans droits admin** :
   - Utiliser la version portable (Windows) : [nvm-windows releases](https://github.com/coreybutler/nvm-windows/releases) (nvm portable)
   - Sur Linux, utiliser nvm (Node Version Manager) :

      ```sh
      curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
      # Redémarrer le terminal puis :
      nvm install --lts
      nvm use --lts
      ```

   - Plus d’infos : [nvm-sh/nvm#installing-and-updating](https://github.com/nvm-sh/nvm#installing-and-updating)


### Ruby

- **Site officiel** : [https://www.ruby-lang.org/](https://www.ruby-lang.org/)
- **Sans droits admin** :
   - Windows : RubyInstaller permet une installation utilisateur ([rubyinstaller.org](https://rubyinstaller.org/))
   - Linux : Utiliser rbenv ([github.com/rbenv/rbenv](https://github.com/rbenv/rbenv)) ou rvm ([rvm.io](https://rvm.io/))

      ```sh
      # Exemple rbenv
      curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-installer | bash
      # Suivre les instructions affichées pour ajouter rbenv au PATH
      rbenv install 3.2.2
      rbenv global 3.2.2
      ```


### Java (pour IG Publisher)

- **Site officiel** : [https://adoptium.net/](https://adoptium.net/)
- **Sans droits admin** :
   - Télécharger l’archive .zip/.tar.gz, extraire dans un dossier utilisateur, puis ajouter le dossier bin/ à la variable PATH.


### Git

- **Site officiel** : [https://git-scm.com/](https://git-scm.com/)
- **Sans droits admin** :
   - Windows : télécharger le .zip portable ([git-scm.com/download/win](https://git-scm.com/download/win))
   - Linux : installation classique (`sudo apt install git`) ou compilation locale


### Editeur de texte recommandé

- **Visual Studio Code** : [https://code.visualstudio.com/](https://code.visualstudio.com/)
- **Sans droits admin** :
   - Télécharger la version portable ([Download#section=windows](https://code.visualstudio.com/Download#section=windows))


### Docker (optionnel)

- **Site officiel** : [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
- **Sans droits admin** :
   - Utilisation possible de Docker Desktop en mode utilisateur sur Windows (nécessite WSL2)
   - Sur Linux, installation rootless : [docs.docker.com/engine/security/rootless/](https://docs.docker.com/engine/security/rootless/)

---

## 2. Installation de Sushi


### Sous Windows

#### Avec droits administrateur

1. Ouvrir un terminal (cmd ou PowerShell) en mode administrateur
2. Installer Sushi globalement :

   ```sh
   npm install -g fsh-sushi
   ```

3. Vérifier l'installation :

   ```sh
   sushi --version
   ```


#### Sans droits administrateur

1. Ouvrir un terminal utilisateur
2. Installer Sushi localement dans le projet :

   ```sh
   npm install --save-dev fsh-sushi
   ```

3. Utiliser Sushi avec :

   ```sh
   npx sushi
   ```


### Sous Linux

#### Avec droits administrateur

1. Ouvrir un terminal
2. Installer Sushi globalement :

   ```sh
   sudo npm install -g fsh-sushi
   ```

3. Vérifier l'installation :

   ```sh
   sushi --version
   ```


#### Sans droits administrateur

1. Ouvrir un terminal
2. Installer Sushi localement dans le projet :

   ```sh
   npm install --save-dev fsh-sushi
   ```

3. Utiliser Sushi avec :

   ```sh
   npx sushi
   ```

---

## 3. Installation de Jekyll


### Sous Windows

#### Avec droits administrateur

1. Installer Ruby ([rubyinstaller.org](https://rubyinstaller.org/))
2. Ouvrir une invite de commandes Ruby en mode administrateur
3. Installer Jekyll :

   ```sh
   gem install jekyll bundler
   ```

4. Vérifier :

   ```sh
   jekyll --version
   ```


#### Sans droits administrateur

1. Installer Ruby pour l'utilisateur
2. Installer Jekyll dans le dossier personnel :

   ```sh
   gem install --user-install jekyll bundler
   ```

3. Ajouter le chemin des gems à la variable d'environnement PATH (voir message d'installation)
4. Vérifier :

   ```sh
   jekyll --version
   ```


### Sous Linux

#### Avec droits administrateur

1. Installer Ruby (ex : `sudo apt install ruby-full`)
2. Installer Jekyll :

   ```sh
   sudo gem install jekyll bundler
   ```

3. Vérifier :

   ```sh
   jekyll --version
   ```


#### Sans droits administrateur

1. Installer Ruby pour l'utilisateur (ex : via rbenv ou rvm)
2. Installer Jekyll localement :

   ```sh
   gem install --user-install jekyll bundler
   ```

3. Ajouter le chemin des gems à la variable d'environnement PATH (voir message d'installation)
4. Vérifier :

   ```sh
   jekyll --version
   ```

---

## 4. Intégration continue (CI/CD) sur GitHub

Ce dépôt IG est déjà configuré pour la génération automatique sur GitHub grâce à GitHub Actions.


### Fonctionnement

- À chaque push ou pull request sur la branche `main`, le workflow `.github/workflows/build-ig.yml` compile automatiquement l'IG.
- Le site HTML généré est publié sur GitHub Pages.


### Lien du site IG compilé

- Après chaque build, le site est accessible à l'adresse :

   `https://<utilisateur>.github.io/<nom-du-repo>/`

- Exemple pour ce dépôt :

   `https://nicolasmoreaucpage.github.io/ig-fhir-doc-cpage/`


### Consulter le statut du build

- Rendez-vous dans l'onglet **Actions** du dépôt GitHub pour voir l'état des builds.
- Les artefacts générés (site complet) sont téléchargeables dans chaque run.


### Personnalisation

- Le workflow CI/CD est défini dans `.github/workflows/build-ig.yml`.
- Il utilise Java, Ruby/Jekyll, et le Publisher HL7.
- Pour modifier le déploiement, adaptez ce fichier YAML.


### Documentation officielle

- [GitHub Pages](https://docs.github.com/fr/pages)
- [GitHub Actions](https://docs.github.com/fr/actions)
- [Exemple de workflow IG HL7](https://github.com/HL7/ig-template-base/blob/master/.github/workflows/build.yaml)

---
