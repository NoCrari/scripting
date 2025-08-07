def create_person(
    # positional
    first_name,
    last_name,
    # positional or key-word
    age=None,
    gender=None,
    # * indicate that after it parametres will only be keyword
    *,
    size=1.83,
    job="taxidermist"
):
    return {
        "first_name": first_name,
        "last_name": last_name,
        "age": age,
        "gender": gender,
        "size": size,
        "job": job,
    }
