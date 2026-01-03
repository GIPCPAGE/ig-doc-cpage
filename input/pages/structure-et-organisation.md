
# Organiser son projet IG FHIR : structure, arborescence et bonnes pratiques

Cette page vous guide pour structurer efficacement un Implementation Guide FHIR, tant sur le plan logique (navigation, organisation des contenus) que technique (arborescence de fichiers, configuration, menu). Elle s’adresse aux concepteurs, développeurs et responsables qualité souhaitant garantir la clarté, la maintenabilité et la conformité de leur IG.

---

## 1. Vue d’ensemble d’un IG FHIR

Un IG FHIR regroupe :
- **Artefacts techniques** : profils, extensions, terminologies
- **Documentation narrative** : guides d’implémentation, cas d’usage, FAQ
- **Exemples concrets** : instances d’échange, scénarios
- **Métadonnées** : publication, version, conformité
- **Ressources complémentaires** : outils, scripts, annexes

L’objectif est de transformer FHIR générique en spécifications opérationnelles adaptées à un domaine ou projet donné.

> **À retenir** : Structurez votre IG pour qu’un nouveau contributeur comprenne la logique du projet en moins de 10 minutes.

---

## 2. Organisation logique et navigation

### Parcours type d’un IG
1. **Accueil** : présentation générale, plan du guide
2. **Contexte et objectifs** : pourquoi cet IG, à qui s’adresse-t-il
3. **Artefacts** : profils, extensions, terminologies, opérations
4. **Guides d’implémentation** : workflows, règles, exemples
5. **Validation et conformité** : critères, outils, tests
6. **Annexes** : glossaire, historique, contacts

### Bonnes pratiques de structuration
- **Progression logique** : du général au spécifique
- **Navigation claire** : menu intuitif, liens croisés, ancres
- **Cohérence** : terminologie et style uniformes
- **Modularité** : pages spécialisées, réutilisables
- **Versionning** : historique traçable
- **Accessibilité** : formats alternatifs (PDF, etc.)

> **Astuce** : Testez la navigation après chaque modification du menu ou des pages.

---

## 3. Structure technique recommandée

### Arborescence type d’un projet IG
```text
mon-ig-fhir/
├── sushi-config.yaml      # Configuration IG (pages, menu, métadonnées)
├── ig.ini                # Configuration IG Publisher
├── input/
│   ├── pages/            # Documentation Markdown (une page par section)
│   ├── fsh/              # Artefacts FSH (profils, extensions, terminologies)
│   ├── resources/        # Ressources FHIR additionnelles (JSON/XML)
│   ├── images/           # Médias (schémas, logos)
│   └── includes/         # Fragments réutilisables (headers, footers)
├── fsh-generated/        # Artefacts compilés (par SUSHI)
├── output/               # Site généré (par IG Publisher)
└── template/             # Template Jekyll
```

### Fichiers de configuration clés
- `sushi-config.yaml` : pages, menu, métadonnées, dépendances
- `ig.ini` : configuration IG Publisher

---

## 4. Gestion des pages et du menu

- Placez chaque page dans `input/pages/`
- Déclarez chaque page dans la section `pages:` de `sushi-config.yaml`
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

> **Erreur fréquente** : Oublier de déclarer une page dans `pages:` ou de l’ajouter au menu. Résultat : page non générée ou inaccessible.

---

## 5. Conseils pour une structure professionnelle

- **Un IG = Un dépôt Git** : évitez de mélanger plusieurs IG dans un même repo
- **Versionnez tout** : commit régulier, changelog, tags
- **Documentez** : README, commentaires, historique
- **Testez localement** : avant chaque publication
- **Nommez clairement** : fichiers, dossiers, artefacts
- **Favorisez la réutilisation** : fragments, includes, styles

> **Pour aller plus loin** : Consultez la page [Méthodologie, outils, publication](methodologie-outils-publication.html) pour les bonnes pratiques de qualité, validation et publication.
