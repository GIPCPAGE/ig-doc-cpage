#!/bin/bash
# Script principal pour générer l'IG avec branding CPage automatique

echo "🚀 Génération de l'IG FHIR avec branding CPage automatique..."
echo "📍 Template: https://github.com/NicolasMoreauCPage/ig-template-cpage"
echo ""

# Générer l'IG
echo "⚙️  Génération en cours..."
java -jar input-cache/publisher.jar -ig ig.ini

# Vérifier si la génération a réussi
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Génération terminée, application du branding CPage..."
    ./_apply_branding.sh
    echo ""
    echo "🎊 SUCCÈS ! IG avec branding CPage générée !"
    echo "📂 Résultat: output/index.html"
    echo "🌐 Ouvrir: file://$(pwd)/output/index.html"
else
    echo ""
    echo "❌ ERREUR lors de la génération de l'IG"
    exit 1
fi