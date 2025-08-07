def remember_the_apple(shopping_list):
    # If the string 'apple' is not in the list, it should be added.
    if not shopping_list:
        return shopping_list  # Return the empty list as is

    # not in the list It should be added
    if "apple" not in shopping_list:
        shopping_list.append("apple")

    # If the input list is empty, the returned list should be also empty
    return shopping_list
