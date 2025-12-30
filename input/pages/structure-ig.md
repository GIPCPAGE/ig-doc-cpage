# Exemple de structure de projet
```
input/
  pages/
    index.md
    introduction.md
    ...
  resources/
  images/
sushi-config.yaml
ig.ini
```

# Structure d’un Implementation Guide FHIR

Un IG FHIR regroupe profils, extensions, exemples et documentation, publiés sous forme de site web et de package versionné.

## Arborescence type d’un projet IG
- **ig.ini** : configuration principale
- **sushi-config.yaml** : métadonnées du projet (titre, description, version…)
- **input/** : sources du projet
  - **pages/** : documentation (Markdown)
  - **fsh/** : profils, extensions, instances (FSH)
  - **resources/** : ressources FHIR (JSON/XML)
  - **includes/** : fragments HTML/Markdown réutilisables
  - **images/** : illustrations, logos…
- **output/** : site web généré

## Conseils de structuration
## Conseils de structuration
- Un IG par projet spécifique
- Versionnez chaque IG indépendamment
- Déclarez explicitement les dépendances (autres IG, packages…)
- Utilisez des URLs canoniques claires et stables
- Documentez chaque artefact (profils, extensions, valeurs…)

> **Astuce :** Reportez-vous à la page [Bonnes pratiques](bonnes-pratiques.html) pour des conseils détaillés sur la structuration et la rédaction d’un IG FHIR.

## Exemples d’IG
- [US Core](https://hl7.org/fhir/us/core/)
- [mCODE](http://hl7.org/fhir/us/mcode/)
- [SDC](http://hl7.org/fhir/uv/sdc/index.html)