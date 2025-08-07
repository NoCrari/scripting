#!/usr/bin/env python3

import re


def tokenize(sentence):
    # Convertir en minuscule
    sentence = sentence.lower()

    # Remplacer les ponctuations et caractères spéciaux par des espaces
    sentence = re.sub(r"[^a-z0-9]", " ", sentence)

    # Sépare la string en mot par mot
    words = sentence.split()

    return words
