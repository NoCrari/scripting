import json


def get_recipes(file_name):
    # ouvre le fichier
    with open(file_name, mode="r", encoding="utf-8") as file:
        # Load JSON data into a Python object (list of dicts)
        recipes = json.load(file)
    return recipes
