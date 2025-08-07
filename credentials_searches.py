#!/usr/bin/env python3

import json
import os


def credentials_search():
    # Check if logs.json exists and is readable
    if not os.path.isfile("logs.json") or os.path.getsize("logs.json") == 0:
        return  # Si le fichier n'existe pas ou est vide, on quitte la fonction

    # Tente d'ouvrir logs.json en lecture avec l'encodage UTF-8
    try:
        with open("logs.json", "r", encoding="utf-8") as file:
            # Convertit le contenu JSON en un objet Python (dictionnaire ou liste)
            data = json.load(file)

    # Si le fichier n'est pas lisible ou pas un JSON valide, on arrête
    except (json.JSONDecodeError, FileNotFoundError):
        return

    # On prépare un dictionnaire pour stocker les credentials trouvés
    found = {}

    # Fonction récursive qui parcourt toute la structure JSON
    def search(obj):
        # Check if a value is a dict
        if isinstance(obj, dict):
            # On parcourt toutes les paires clé/valeur
            for key, value in obj.items():
                # Si la clé est "password", on l'enregistre
                if key == "password":
                    found["password"] = value
                # Si la clé est "secret", on l'enregistre
                elif key == "secret":
                    found["secret"] = value
                else:
                    # Si ce n'est pas une clé intéressante, on continue à chercher dans la valeur
                    search(value)
        # Si l'objet est une liste, on parcourt chaque élément
        elif isinstance(obj, list):
            for item in obj:
                search(item)  # On continue la recherche dans chaque élément de la liste

    # On lance la recherche sur tout le JSON chargé
    search(data)

    # Si on a trouvé au moins un password ou un secret
    if found:
        # On crée ou remplace le fichier credentials.json pour enregistrer ce qu'on a trouvé
        with open("credentials.json", "w", encoding="utf-8") as file:
            json.dump(
                found, file, indent=2
            )  # On écrit le dictionnaire au format JSON bien formaté (indentation de 2)
    else:
        # Si on n'a rien trouvé, on supprime credentials.json s'il existe déjà (éviter de garder un ancien fichier inutile)
        if os.path.isfile("credentials.json"):
            os.remove("credentials.json")
