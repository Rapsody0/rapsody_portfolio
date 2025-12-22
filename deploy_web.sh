#!/bin/bash
set -e

echo "Costruzione build web release con base-href per GitHub Pages..."
# Per GitHub Pages (repo rapsody_portfolio) serviremo da /rapsody_portfolio/.
# Usiamo renderer html per massima compatibilità e disabilitiamo il service worker
# per evitare cache vecchie durante il deploy (puoi rimettere il PWA se serve).
flutter build web \
	--release \
	--base-href "/rapsody_portfolio/" \
	--pwa-strategy=none

echo "Spostamento contenuto build/web/ in docs/..."
rm -rf docs/*
cp -r build/web/* docs/

echo "Aggiunta e commit delle modifiche..."
git add docs/
git commit -m 'Aggiorna build web release in docs'

echo "Push su remoto..."
git push

echo "Deploy completato!"