#!/usr/bin/env python3

import re
from collections import Counter
import operator


def tokenizer_counter(input_string):
    # # Convertir en minuscule
    input_string = input_string.lower()

    # Remplacer les ponctuations et caractères spéciaux par des espaces
    input_string = re.sub(r"[^a-z0-9]", " ", input_string)

    # Sépare la string en mot par mot
    words = input_string.split()

    # Count words
    word_counts = Counter(words)

    # Sort dictionary alphabetically by word
    sorted_word_counts = dict(sorted(word_counts.items(), key=operator.itemgetter(0)))

    return sorted_word_counts
