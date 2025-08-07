#!/usr/bin/env python3
import sys


def main():
    if len(sys.argv) != 2:
        print("Error: wrong number of arguments")
        exit(1)

    try:
        num_candidates = int(sys.argv[1])
    except ValueError:
        print("Error: the argument must be an integer")
        exit(1)

    candidates = {}

    for i in range(num_candidates):
        print("Add a new candidate:")
        name = input("name: ")
        age = int(input("age: "))
        candidates[name] = age

    for name, age in candidates.items():
        if age < 18:
            print(f"{name} is not eligible (underaged)")
        elif age > 60:
            print(f"{name} is not eligible (over the legal age)")
        else:
            print(f"{name} is eligible")


if __name__ == "__main__":
    main()
