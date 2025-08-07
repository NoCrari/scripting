def day_from_number(day_number):
    """Convert day number (1-7) => day name (Monday-Sunday)."""
    days = {
        1: "Monday",
        2: "Tuesday",
        3: "Wednesday",
        4: "Thursday",
        5: "Friday",
        6: "Saturday",
        7: "Sunday",
    }

    return days.get(day_number, None)


def day_to_number(day):
    """Convert day name (Monday-Sunday) => day number (1-7)."""
    days = {
        "Monday": 1,
        "Tuesday": 2,
        "Wednesday": 3,
        "Thursday": 4,
        "Friday": 5,
        "Saturday": 6,
        "Sunday": 7,
    }

    return days.get(day, None)
