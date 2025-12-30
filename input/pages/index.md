
# Guide documentaire IG FHIR – Accueil

Bienvenue sur le **Guide documentaire IG FHIR** de l’entreprise CPage. Ce guide complet vous accompagne dans la création, la publication et la maintenance d’Implementation Guides (IG) FHIR, en suivant les meilleures pratiques de l’industrie et les standards HL7.

## Qu'est-ce qu'un IG FHIR ?

Un **Implementation Guide FHIR** est un document structuré qui décrit comment utiliser le standard FHIR (Fast Healthcare Interoperability Resources) pour répondre à un besoin spécifique d’interopérabilité en santé. Il combine :

- **Profils** : Contraintes sur les ressources FHIR pour des cas d'usage précis
- **Extensions** : Nouveaux éléments de données non couverts par le core FHIR
- **Exemples** : Instances concrètes illustrant l'usage
- **Documentation narrative** : Guides d'implémentation, bonnes pratiques, cas d'usage
- **Terminologies** : Value sets et code systems adaptés

Un IG est publié sous forme de site web interactif et de package NPM, facilitant sa réutilisation et son intégration.

## Objectifs de ce guide

- **Structurer votre approche** : Méthodologie pas à pas pour créer des IG de qualité
- **Maîtriser les outils** : Installation, configuration et utilisation de SUSHI, IG Publisher, etc.
- **Appliquer les bonnes pratiques** : Qualité, conformité, maintenabilité
- **Faciliter la collaboration** : Publication, validation, gestion des versions

## Public visé

Ce guide s'adresse à tous les acteurs impliqués dans les projets FHIR :

- **Modélisateurs FHIR** : Définition des profils et extensions
- **Développeurs** : Implémentation des interfaces et validation
- **Experts métier** : Spécification des besoins fonctionnels
- **Architectes** : Conception de l'écosystème d'interopérabilité
- **Toute personne** souhaitant comprendre ou contribuer aux IG FHIR

## À qui est destiné ce guide ?

Ce guide s'adresse à toutes les personnes travaillant avec FHIR :

- **Les FHIR modelers** : Qui créent les guides et profilent des ressources
- **Les FHIR implementers** : Qui lisent ces guides et développent des APIs
- **Les experts fonctionnels** : Qui ont la vision métier et challengent les travaux de modélisation
- **Les architectes** : Qui conçoivent l'écosystème d'interopérabilité

## Reporter un problème ou une suggestion

Vous avez identifié une erreur ou souhaitez proposer une amélioration ? Utilisez l'onglet "Issues" du [dépôt GitHub](https://github.com/NicolasMoreauCPage/ig-fhir-doc-cpage/issues) pour signaler un problème.

L'issue doit contenir :
- Un titre clair et descriptif
- Une description détaillée du problème
- Une proposition de solution si possible

## Plan du guide

1. **[Prise en main rapide](quickstart.html)** : Premiers pas en 5 minutes
2. **[Installation](installation.html)** : Configuration de l'environnement de développement
3. **[Structure d'un IG](structure-ig.html)** : Organisation des fichiers et dossiers
4. **[Profils](profiles.html)** : Création et gestion des profils FHIR
5. **[Extensions](extensions.html)** : Définition d'extensions personnalisées
6. **[Terminologies](terminologies.html)** : Gestion des codes et value sets
7. **[Bonnes pratiques](bonnes-pratiques.html)** : Recommandations essentielles
8. **[Publication et validation](publication-validation.html)** : Déploiement et qualité
9. **[Outils](outils.html)** : Écosystème technique FHIR
10. **[FAQ](faq.html)** : Questions fréquentes
11. **[Liens utiles](liens-utiles.html)** : Ressources complémentaires

Utilisez le menu de navigation pour explorer les sections qui vous intéressent.

> **Important** : Commencez par la page [Bonnes pratiques](bonnes-pratiques.html) pour comprendre les principes fondamentaux de qualité et conformité.

## 📋 Usage du template et de l'IG clonable

⚠️ **Important : Usage réservé à CPage**

Ce guide documentaire et le template IG associé sont **exclusivement destinés** à la création d'Implementation Guides FHIR pour l'entreprise CPage.

- ✅ **Autorisé** : Création d'IG pour des projets CPage (internes ou clients)
- ❌ **Non autorisé** : Utilisation pour des projets externes à CPage
- ❌ **Non autorisé** : Redistribution ou partage du template hors CPage

Pour des projets externes à CPage, utilisez :
- Le [template officiel HL7](https://github.com/HL7/ig-template-base)
- Les [outils standards FHIR](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)

**Raison** : Ce template intègre des configurations, styles et processus spécifiques à CPage qui ne sont pas adaptés à d'autres contextes.

## Contribution

Ce guide est évolutif et ouvert à contribution. Pour proposer des améliorations :

- Ouvrez une **Issue** sur le dépôt GitHub
- Soumettez une **Pull Request** avec vos modifications
- Contactez l'équipe projet pour toute question

N'hésitez pas à partager vos retours d'expérience pour enrichir ce guide collectif !
