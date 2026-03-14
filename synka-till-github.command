#!/bin/bash

# Gå till mappen där scriptet ligger (dvs Hemsida-mappen)
cd "$(dirname "$0")"

echo "================================================"
echo "  Synkar hemsidan till GitHub..."
echo "================================================"
echo ""

# Kolla om det finns några ändringar
if git diff --quiet && git diff --staged --quiet && [ -z "$(git status --porcelain)" ]; then
  echo "✅  Inga ändringar att ladda upp – allt är redan uppdaterat!"
  echo ""
  read -p "Tryck Enter för att stänga..."
  exit 0
fi

# Visa vad som ska laddas upp
echo "Filer som laddas upp:"
git status --short
echo ""

# Lägg till allt, committa med tidstämpel, pusha
git add .
git commit -m "Uppdatering $(date '+%Y-%m-%d %H:%M')"

echo ""
echo "Pushar till GitHub..."
git push origin main

if [ $? -eq 0 ]; then
  echo ""
  echo "✅  Klart! Hemsidan är uppdaterad på GitHub."
  echo "    Ändringarna syns på richardhauer.com inom ~1 minut."
else
  echo ""
  echo "❌  Något gick fel. Kontrollera din internetanslutning"
  echo "    och att din GitHub-token fortfarande är giltig."
fi

echo ""
read -p "Tryck Enter för att stänga..."
