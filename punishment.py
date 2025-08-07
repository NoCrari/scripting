def do_punishment(first_part, second_part, nb_lines):
    # Remove leading and trailing spaces
    first_part = first_part.strip()
    second_part = second_part.strip()

    # Prepare the sentence
    sentence = f"{first_part} {second_part}."

    # Repeat the sentence nb_lines times and join with new lines
    return (sentence + "\n") * nb_lines
