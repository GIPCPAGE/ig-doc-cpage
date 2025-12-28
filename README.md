# Template d'IG FHIR CPage

Template personnalisé pour les Implementation Guides FHIR avec branding CPage.

## 🚀 Utilisation

### Génération automatique avec branding CPage

Pour générer l'IG avec le branding CPage automatiquement appliqué :

```bash
./_genonce_cpage.sh
```

Ce script :
1. Génère l'IG avec le template personnalisé
2. Applique automatiquement le branding CPage (logo, couleurs)
3. Crée une sauvegarde du fichier original

### Génération classique

Pour générer l'IG sans branding automatique :

```bash
./_genonce.sh
```

Puis appliquer manuellement le branding :

```bash
./_apply_cpage_branding.sh
```

## 🎨 Branding CPage

Le template inclut :
- **Logo CPage** dans la navbar
- **Couleurs CPage** : Bleu (#003d7a) et vert (#7fb800)
- **Texte personnalisé** : "CPage FHIR IG"
- **Support français** complet

## 📁 Structure

```
FHIR_IG/
├── ig.ini                    # Configuration IG
├── input/                    # Contenu source
├── output/                   # IG générée (branding appliqué)
├── scripts/                  # Scripts de génération
├── _genonce_cpage.sh         # Script combiné avec branding
├── _apply_cpage_branding.sh  # Script d'application branding
└── template/                 # Template local (optionnel)
```

## 🔧 Template personnalisé

Le template CPage est disponible sur GitHub :
- **Repository** : https://github.com/NicolasMoreauCPage/ig-template-cpage
- **Base** : Extension de `fhir.base.template`

## 📋 Prérequis

- Java 17+
- FHIR IG Publisher
- Git

## 🆘 Support

En cas de problème, vérifier :
1. Que le logo `logo-cpage.png` est présent dans `output/assets/images/`
2. Que les scripts sont exécutables (`chmod +x *.sh`)
3. Que le template est correctement chargé (visible dans les logs)
