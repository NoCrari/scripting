#!/usr/bin/env python3

import sys

if __name__ == "__main__":
    # Si le nombre d'arguments n'est pas égal à 2
    if len(sys.argv) != 2:
        # on quitte le code
        exit(1)

    # inpu_file prend en valeur la saisie d'arg1
    input_file = sys.argv[1]

    try:
        with open(input_file, "r", encoding="utf-8") as file:
            lines = file.readlines()

        filtered_lines = [line for line in lines if "pineapple" not in line]

        # Écrire les lignes filtrées dans out.txt
        with open("out.txt", "w", encoding="utf-8") as out_file:
            for line in filtered_lines:
                out_file.write(line)

    except:
        exit(1)
