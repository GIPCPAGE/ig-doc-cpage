# Méthodologie, outils, publication et validation des IG FHIR

Ce chapitre regroupe les bonnes pratiques, la méthodologie, les outils essentiels, ainsi que les processus de publication et de validation pour un Implementation Guide (IG) FHIR professionnel et conforme aux standards HL7.

---

## 1. Bonnes pratiques et méthodologie

- **Clarté et accessibilité** : Rédigez pour des développeurs, évitez le jargon, structurez l’information pour une prise en main rapide.
- **Versionning et traçabilité** : Chaque publication doit être versionnée, historisée et documentée.
- **Réutilisation** : Privilégiez les artefacts existants dans l’écosystème de l’entreprise.
- **Qualité et validation** : Testez localement, validez la conformité FHIR, corrigez toutes les erreurs QA avant publication.
- **Ouverture** : Encouragez la contribution, documentez les issues, facilitez la maintenance.

### Organisation et structure du guide
- Séparez le contenu normatif (critères de conformité) du non-normatif (contexte, cas d’usage, téléchargements).
- Privilégiez des pages complètes et structurées, avec des ancres explicites pour la navigation.
- Présentez les informations dans un ordre logique, mais prévoyez des liens croisés pour les lecteurs qui naviguent aléatoirement.

### Rédaction et narration
- Rédigez de façon concise, claire et orientée développeur.
- Ajoutez des introductions à chaque artefact (profil, extension, etc.) pour expliquer leur utilité et leur contexte.
- Utilisez des styles narratifs (stu-note, dragon, feedback…) pour attirer l’attention sur des points clés ou avertissements.
- Structurez l’IG pour qu’un développeur puisse comprendre l’essentiel en 30 minutes.
- Multipliez les liens internes et externes pour faciliter la navigation et la compréhension.

### Gestion des artefacts et profils
- Ne créez que les artefacts réellement utiles et maintenables sur le long terme.
- Utilisez `mustSupport` pour indiquer ce qui doit être supporté, sans surcontraindre la cardinalité.
- Évitez de forcer la présence de `meta.profile` dans les exemples.
- Documentez les raisons des choix de conception (rationales) pour faciliter la maintenance.
- Utilisez des noms explicites, stables et conformes aux conventions FHIR.

### Exemples et extensions
- Fournissez des exemples couvrant tous les éléments `mustSupport` et toutes les extensions définies.
- Avant de créer une extension, vérifiez si une extension existante ou un élément du core peut convenir.
- Documentez les usages attendus et les cas limites.

### Sécurité et confidentialité
- Ajoutez une section dédiée expliquant les risques, les contre-mesures et les principes de sécurité/confidentialité applicables.
- Référencez les modules FHIR sur la sécurité et la confidentialité.
- Indiquez les exigences spécifiques de votre IG et les risques résiduels.

### Maintenance et gouvernance
- Mettez sous contrôle de version tout le contenu source.
- Relisez et corrigez l’orthographe et la grammaire.
- Documentez les changements (changelog, page historique).
- Planifiez des revues régulières pour intégrer les retours de la communauté.
- Archivez les anciennes versions et garantissez leur accessibilité.

### Contribution et support
- Encouragez la participation (issues, suggestions, pull requests).
- Décrivez clairement le processus de contribution (workflow, validation, publication).
- Valorisez les contributeurs et maintenez une gouvernance ouverte.
- Indiquez comment contacter l’équipe ou la communauté pour toute question ou suggestion.

### Liens et ressources
- Ajoutez des liens vers la documentation officielle FHIR, les guides de bonnes pratiques, les outils et les exemples d’IG.
- Expliquez les relations avec d’autres IG (dépendances formelles ou informelles).

---

## 2. Outils essentiels pour les IG FHIR

### FHIR Shorthand (FSH)
Langage de définition des artefacts FHIR, syntaxe lisible et concise, moins verbeux que JSON/XML, validation intégrée, génération automatique de documentation.

Installation :
```bash
npm install -g fsh-sushi
```

Ressources :
- [Documentation FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/)
- [FSH School](https://fshschool.org/)

### SUSHI (FSH Compiler)
Compilation FSH vers ressources FHIR, génération de StructureDefinitions, création d’exemples, validation syntaxique, génération de snapshots.

Commandes essentielles :
```bash
sushi .                    # Compilation complète
sushi -s .                # Avec snapshots
sushi --help              # Aide
```

### IG Publisher (HL7)
Génération du site web IG, validation complète des artefacts, génération HTML/CSS/JS, rapports de qualité (QA), publication prête.

### GoFSH (conversion inverse)
Convertir des StructureDefinitions JSON/XML existants en FSH
- Facilite la migration d’anciens projets ou la récupération de profils existants
- Permet de générer du FSH à partir de ressources déjà publiées

Commandes clés :
```bash
gofsh .                       # Conversion de tous les JSON du dossier
gofsh -t json-and-xml .       # Conversion JSON + XML
gofsh --fshing-trip           # Conversion + compilation + comparaison automatique
```

### Outils complémentaires
- FHIR Validator : validation en ligne de commande
- Touchstone : plateforme de test d’interopérabilité
- Postman/Newman : tests d’API automatisés

---

## 3. Publication, validation et déploiement

### Validation : assurer la qualité

#### Types de validation
- **Validation syntaxique** : FSH, JSON/XML, outils SUSHI et IG Publisher
- **Validation sémantique** : cohérence des profils, terminologies, exemples
- **Validation fonctionnelle** : interopérabilité, performance, sécurité

#### Outils de validation
- IG Publisher : validation automatique lors de la génération
- FHIR Validator : outil en ligne de commande
- Touchstone : plateforme de test d’interopérabilité
- Postman/Newman : tests d’API automatisés

#### Critères de qualité
- 0 erreur dans les logs IG Publisher
- Exemples valides pour tous les profils
- Terminologies résolues et à jour
- Documentation complète et claire

### Publication : rendre accessible

#### Formats de publication
- **Site web (recommandé)** : génération Jekyll, hébergement GitHub Pages ou serveur interne
- **Package NPM** : artefacts FHIR et dépendances, publication sur registre NPM ou dépôt privé
- **Documentation PDF** : usage réglementaire, génération à partir du HTML

#### Processus de publication
1. Build local : `./_genonce.sh`
2. Validation : vérifier les logs et rapports QA
3. Tests : validation croisée avec consommateurs
4. **Versionning** : Tag Git, numéro de version
5. **Déploiement** : Push sur branche de publication

### Déploiement automatisé (CI/CD)

À chaque modification sur la branche `main`, le workflow `.github/workflows/build-ig.yml` compile l’IG et publie le site HTML sur GitHub Pages.

Après chaque build, le site est accessible à l’adresse : `https://<utilisateur>.github.io/<nom-du-repo>/`

Le statut du build est consultable dans l’onglet Actions du dépôt GitHub. Les artefacts générés sont téléchargeables après chaque exécution.

Le workflow CI/CD est défini dans `.github/workflows/build-ig.yml` et utilise Java, Ruby/Jekyll et le Publisher HL7. Pour modifier le déploiement, adaptez ce fichier YAML.

Pour le dépannage, consultez les logs dans l’onglet Actions et vérifiez la configuration de GitHub Pages dans les paramètres du dépôt.

Voir aussi :
- [GitHub Pages](https://docs.github.com/fr/pages)
- [GitHub Actions](https://docs.github.com/fr/actions)

---

## 4. Publication sur GitHub Pages

Pour publier automatiquement votre guide sur GitHub Pages :
- Rendez-vous dans l’onglet **Settings > Pages** de votre dépôt GitHub.
- Dans la section "Build and deployment", choisissez **GitHub Actions** comme source de publication.
- Le reste de la configuration (branche, dossier, workflow) est déjà géré par le fichier GitHub Actions du dépôt.
- Vérifiez l’URL de publication fournie par GitHub après activation.

---

*Dernière mise à jour : 31 décembre 2025*