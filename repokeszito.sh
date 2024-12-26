#!/bin/bash

### cseréld le a nevet a 37. sorban a saját github nevedre!

# A jelenlegi mappa meghatározása
current_dir=$(basename "$PWD")

# Repó név bekérése
read -p "Add meg a repó nevét (alapértelmezett: $current_dir): " repo_name
repo_name=${repo_name:-$current_dir}

# Publikus vagy privát opció bekérése
read -p "Publikus vagy privát? (1=Privát, 2=Publikus, alapértelmezett: Privát): " visibility_option

case $visibility_option in
    2)
        visibility="public"
        ;;
    *)
        visibility="private"
        ;;
esac

# GitHub repó létrehozása
if gh repo create "$repo_name" --$visibility; then
    echo "GitHub repó sikeresen létrehozva: $repo_name"
else
    echo "Hiba történt a GitHub repó létrehozásakor."
    exit 1
fi

# Helyi git repó inicializálása
git init

git add .
git commit -m "Létrehozás"
git remote add origin "git@github.com:gitusername/$repo_name.git"
git branch -M main
git push -u origin main

# Sikeres push visszajelzése
echo "A repó sikeresen feltöltve a GitHub-ra."
