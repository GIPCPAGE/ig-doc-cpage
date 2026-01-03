---

# Guide professionnel des Implementation Guides FHIR (CPage)

> **Bienvenue !** Ce guide didactique vous accompagne pas à pas dans la conception, la publication et la maintenance d’Implementation Guides (IG) FHIR, selon les standards HL7 et les meilleures pratiques de l’industrie. Il s’adresse à tous les acteurs de l’interopérabilité en santé : modélisateurs, développeurs, experts métier, architectes, ou toute personne souhaitant comprendre ou contribuer aux IG FHIR.

---

## À propos des IG FHIR

Un Implementation Guide (IG) FHIR est un document structurant qui décrit comment utiliser le standard FHIR pour répondre à un besoin d’interopérabilité. Il regroupe :
- **Profils** (contraintes sur les ressources FHIR)
- **Extensions** (ajouts personnalisés)
- **Terminologies** (codes, value sets)
- **Exemples** (cas concrets)
- **Documentation narrative**

Chaque IG est publié sous forme de site web interactif et de package NPM, facilitant sa réutilisation et son intégration dans l’écosystème FHIR.

> **Astuce** : Créez un IG par projet pour garantir un versionnage indépendant, une gestion claire des dépendances, et une meilleure interopérabilité. Chaque IG CPage doit hériter des profils nationaux (InteropSanté, ANS) s’ils existent.

Pour aller plus loin : [ImplementationGuide](https://www.hl7.org/fhir/implementationguide.html), [NPM Package](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification)

---

## Plan du guide

1. **[Prise en main rapide](quickstart.html)** : Premiers pas en 5 minutes
2. **[Installation de l’environnement](installation.html)** : Préparer son poste
3. **[Organiser son projet IG FHIR](structure-et-organisation.html)** : Structure logique et technique, arborescence, menu
4. **[Profils FHIR](profiles.html)** : Contraindre et spécialiser les ressources
5. **[Extensions FHIR](extensions.html)** : Ajouter des éléments personnalisés
6. **[Terminologies FHIR](terminologies.html)** : Codes, value sets, bonnes pratiques
7. **[Méthodologie, outils, publication](methodologie-outils-publication.html)** : Qualité, validation, CI/CD, publication, gouvernance
8. **[Utiliser et intégrer les packages](packages.html)** : Création, publication, import, cas d’usage
9. **[FAQ](faq.html)** : Questions fréquentes, erreurs courantes
10. **[Liens utiles](liens-utiles.html)** : Ressources complémentaires

Utilisez le menu ou la table des matières pour naviguer. Commencez par la page [Prise en main rapide](quickstart.html) ou [Méthodologie, outils, publication](methodologie-outils-publication.html) pour comprendre les fondamentaux.

---

## Contribution et support

Ce guide est évolutif et ouvert à la contribution :
- Ouvrez une **Issue** sur le [dépôt GitHub](https://github.com/NicolasMoreauCPage/ig-fhir-doc-cpage/issues)
- Soumettez une **Pull Request**
- Contactez l’équipe projet pour toute question

> **Contact** : [interop@cpage.fr](mailto:interop@cpage.fr)

---

## Usage du template CPage

Ce guide et le template IG associé sont réservés à la création d’IG FHIR pour l’entreprise CPage.

- **Autorisé** : Projets CPage (internes ou clients)
- **Non autorisé** : Projets externes à CPage, redistribution hors CPage

Pour des projets externes, utilisez :
- [Template officiel HL7](https://github.com/HL7/ig-template-base)
- [Outils standards FHIR](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)

---

## Historique et ressources

- [Historique du guide](https://github.com/NicolasMoreauCPage/ig-fhir-doc-cpage/commits/main)
- [Table des matières](toc.html)
- [Rapport QA](output/qa.html)

---
