import json


def merge_two(first_dict):
    d2 = {}

    # d2 allows us to add new entries
    while True:
        print("Add a new entry:")
        key = input("key: ")
        # met l'input key en lowercase pour éviter la casse
        if key.lower() == "exit":
            break
        value = int(input("value: "))
        d2[key] = value

    # Merge the two dictionaries
    merged_dict = {**first_dict, **d2}

    # Return JSON serialized string
    return json.dumps(merged_dict)
