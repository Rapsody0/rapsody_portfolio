#!/bin/bash
set -e

echo "Costruzione build web release..."
flutter build web

echo "Spostamento contenuto build/web/ in docs/..."
rm -rf docs/*
cp -r build/web/* docs/

echo "Aggiunta e commit delle modifiche..."
git add docs/
git commit -m 'Aggiorna build web release in docs'

echo "Push su remoto..."
git push

echo "Deploy completato!"