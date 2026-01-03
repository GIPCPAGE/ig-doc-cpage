# Structure et organisation d’un IG FHIR

Ce chapitre regroupe :
- La vue d’ensemble et l’architecture logique d’un IG FHIR
- Les bonnes pratiques de structuration
- La structure technique du projet et la gestion du menu/pages

---

## Vue d’ensemble d’un IG FHIR

Un Implementation Guide FHIR organise et présente des spécifications d’interopérabilité. Il regroupe :
- Artefacts techniques : profils, extensions, terminologies
- Documentation narrative : guides d’implémentation, cas d’usage
- Exemples concrets : instances d’échange
- Métadonnées : informations de publication et conformité
- Ressources complémentaires : outils, tests, support

L’objectif est de transformer FHIR générique en spécifications opérationnelles pour un domaine donné.

### Organisation logique

1. Page d’accueil : point d’entrée, présentation générale, plan du guide
2. Introduction et contexte : expliquer le pourquoi et le comment, bénéfices, limites, relations avec d’autres IG
3. Artefacts techniques : profils, extensions, terminologies, opérations, recherche
4. Guides d’implémentation : workflows métier, règles de validation, gestion des erreurs, exemples d’intégration
5. Exemples et cas d’usage : instances minimales, scénarios complexes, cas limites, tests d’interopérabilité
6. Conformité et validation : critères de conformité, tests, outils de vérification
7. Annexes techniques : glossaire, mapping, historique, contacts

---

## Bonnes pratiques de structuration

- Progression logique : du général au spécifique
- Navigation claire : menu intuitif et liens croisés
- Cohérence : terminologie et style uniformes
- Maintenabilité : structure évolutive
- Organisation par audience : développeurs, architectes, métiers
- Modularité : pages spécialisées et réutilisables
- Versionning : historique traçable
- Recherche : contenu indexable
- Accessibilité : formats alternatifs (PDF, etc.)

---

## Structure technique du projet IG

### Arborescence recommandée
```
mon-ig-fhir/
├── sushi-config.yaml      # Configuration IG
├── ig.ini                # Configuration Publisher
├── input/
│   ├── pages/            # Documentation Markdown
│   ├── fsh/              # Artefacts FSH
│   ├── resources/        # Ressources additionnelles
│   ├── images/           # Médias
│   └── includes/         # Fragments réutilisables
├── fsh-generated/        # Artefacts compilés (auto)
├── output/               # Site généré (auto)
└── template/             # Template Jekyll
```

### Fichiers de configuration

- sushi-config.yaml : configuration principale (pages, menu, métadonnées)
- ig.ini : configuration IG Publisher

---

## Gestion des pages et du menu

- Placez chaque page dans `input/pages/`
- Déclarez chaque page dans la section `pages:` de sushi-config.yaml
- Structurez le menu dans la section `menu:` (sous-menus YAML possibles)
- Groupez les pages par thématique pour une navigation claire
- Vérifiez la cohérence entre `pages:` et `menu:`
- Testez la navigation après chaque modification

**Exemple de configuration**
```yaml
pages:
  index.md:
    title: Accueil
  structure-et-organisation.md:
    title: Structure et organisation
menu:
  Accueil: index.html
  "Structure et organisation": structure-et-organisation.html
```

---

Pour plus de détails sur la structuration, voir la section “Méthodologie & outils”.
