import json


class User:
    username = "user"
    email = "something@mail.com"


def create_new_user(json_string):
    try:
        user_data = json.loads(json_string)
        if "username" in user_data and "email" in user_data:
            new_user = User()
            new_user.username = user_data["username"]
            new_user.email = user_data["email"]
            return new_user
        else:
            return User()
    except json.JSONDecodeError:
        return User()


def user_to_json(user):
    user_dict = user.__dict__

    # If the user_dict is empty, it means it's a default User
    if not user_dict:
        return "{}"

    return json.dumps(user_dict)
