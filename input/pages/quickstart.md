
# Prise en main rapide

1. **Créer une page** : Ajoutez un fichier `.md` dans `input/pages/` (ex : `nouvelle-page.md`).
2. **Déclarer la page** : Ajoutez-la dans la section `pages:` de `sushi-config.yaml` :
   ```yaml
   pages:
     nouvelle-page.md:
       title: Nouvelle page
   ```
3. **Ajouter au menu** : Ajoutez dans la section `menu:` :
   ```yaml
   menu:
     "Nouvelle page": nouvelle-page.html
   ```
4. **Générer le site** : Exécutez :
   ```sh
   ./_genonce.sh
   ```
5. **Vérifier** : Retrouvez la page dans le menu du site généré.
6. **Pour aller plus loin** : Voir "Structure des pages & menu", "Installation" et surtout la page [Bonnes pratiques](bonnes-pratiques.html).
