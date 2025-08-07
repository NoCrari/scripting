def clean_list(items):
    # An empty list as input should return an empty list as output.
    if items == []:
        return []

    result = []  # On crée une nouvelle liste pour mettre les éléments nettoyés
    index = 1  # On set l'index à 1

    for item in items:
        # On enlève les espaces avant et après le mot
        # On met la première lettre en majuscule et le reste en minuscule
        item = item.strip().capitalize()

        # On ajoute l'élément formaté dans la nouvelle liste
        result.append(str(index) + "/ " + item)

        # On passe à l'élément suivant
        index = index + 1

    # Check if "milk" est dans la liste (EN MINUSCULE)
    found_milk = False
    for item in items:
        if item.strip().lower() == "milk":
            found_milk = True

    # Si "milk" n'est pas dans la liste, on l'ajoute à la fin
    if not found_milk:
        result.append(str(index) + "/ Milk")

    return result
