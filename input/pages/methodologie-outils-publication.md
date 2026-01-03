# Méthodologie, outils, validation et publication d’un IG FHIR

> **Note : Cette méthodologie, les outils et les bonnes pratiques décrits dans cette page s’appliquent spécifiquement aux Implementation Guides FHIR développés par CPage et destinés à l’écosystème CPage.** Les recommandations sont adaptées à nos processus, outils, exigences de qualité et contraintes métier. Pour des projets externes ou des contextes nationaux/internationaux, référez-vous aux guides HL7 ou ANS.

Cette page rassemble toutes les bonnes pratiques, outils, processus de validation, publication et gouvernance pour produire un Implementation Guide FHIR professionnel, maintenable et conforme aux standards HL7.

---

## 1. Bonnes pratiques et méthodologie

- **Clarté et accessibilité** : Rédigez pour des développeurs, structurez l’information, évitez le jargon inutile.
- **Versionning et traçabilité** : Chaque publication doit être versionnée, historisée et documentée.
- **Réutilisation** : Privilégiez les artefacts existants, évitez la duplication.
- **Qualité et validation** : Testez localement, validez la conformité FHIR, corrigez toutes les erreurs QA avant publication.
- **Ouverture** : Encouragez la contribution, documentez les issues, facilitez la maintenance.

> **À retenir** : Structurez l’IG pour qu’un développeur puisse comprendre l’essentiel en 30 minutes.

### Conseils rédactionnels
- Ajoutez des introductions à chaque artefact (profil, extension, etc.) pour expliquer leur utilité et leur contexte.
- Utilisez des encadrés “Astuce”, “Erreur fréquente”, “À retenir” pour attirer l’attention sur les points clés.
- Multipliez les liens internes et externes pour faciliter la navigation.

---

## 2. Outils essentiels pour les IG FHIR

### FHIR Shorthand (FSH) & SUSHI
Langage de définition des artefacts FHIR, syntaxe concise, validation intégrée, génération automatique de documentation.

Installation :
```bash
npm install -g fsh-sushi
```

Ressources :
- [Documentation FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/)
- [FSH School](https://fshschool.org/)

### IG Publisher (HL7)
Génération du site web IG, validation complète des artefacts, rapports de qualité (QA), publication prête.

### GoFSH (conversion inverse)
Convertir des StructureDefinitions JSON/XML existants en FSH pour faciliter la migration ou la récupération de profils existants.

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

## 3. Bonnes pratiques de développement et de gestion de projet IG FHIR

### Organisation du dépôt
- **Structure claire** : séparer les sources (FSH), les ressources générées, la documentation, les scripts.
- **Convention de nommage** : utiliser des noms explicites pour les profils, extensions, exemples.
- **Documentation intégrée** : chaque artefact doit être documenté (description, usage, contraintes).

### Gestion de version et collaboration
- **Git** : versionner tout le projet, utiliser des branches pour les évolutions majeures.
- **Revue de code** : valider les contributions via pull requests.
- **Changelog** : tenir à jour un historique des modifications.

### Validation continue
- **Automatiser la validation** : scripts ou CI pour lancer SUSHI, IG Publisher, FHIR Validator à chaque modification.
- **Rapports QA** : analyser et corriger systématiquement les erreurs et warnings.

### Publication et diffusion
- **Publication HL7** : suivre le process HL7 France ou international si applicable.
- **Documentation utilisateur** : fournir un guide d’utilisation, des exemples, des cas d’usage.
- **Communication** : annoncer les nouvelles versions, recueillir les retours utilisateurs.

---

## 4. Processus de publication et de maintenance d’un IG FHIR

### Cycle de vie d’un IG
1. **Conception** : recueil des besoins, analyse des cas d’usage, rédaction des spécifications.
2. **Modélisation** : création des profils, extensions, terminologies, exemples.
3. **Validation** : tests, validation syntaxique et sémantique, revue par les pairs.
4. **Publication** : génération du site IG, diffusion, communication.
5. **Maintenance** : gestion des retours, corrections, évolutions.

### Publication HL7
- **Préparation** : conformité aux exigences HL7, validation QA, documentation complète.
- **Processus** : soumission à HL7 France ou international, revue, publication officielle.
- **Suivi** : gestion des tickets, évolutions, publication de correctifs ou de nouvelles versions.

### Maintenance et évolutions
- **Support utilisateur** : canal de contact, FAQ, documentation à jour.
- **Gestion des versions** : planification des évolutions, gestion des breaking changes.
- **Archivage** : conserver l’historique des versions publiées.

---

## 5. Ressources utiles et liens

- [FHIR Shorthand (FSH) Documentation](https://build.fhir.org/ig/HL7/fhir-shorthand/)
- [SUSHI (GitHub)](https://github.com/FHIR/sushi)
- [IG Publisher (HL7)](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)
- [GoFSH (GitHub)](https://github.com/FHIR/gofsh)
- [FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator)
- [FSH School](https://fshschool.org/)
- [HL7 FHIR France](https://hl7.fr/)
- [Exemples d’IG FHIR](https://www.hl7.org/fhir/ig/)
- [FHIR Community Chat](https://chat.fhir.org/)

---

*Pour toute question ou suggestion d’amélioration, contactez l’équipe projet ou contribuez via le dépôt GitHub.*
