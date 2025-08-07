import math


def add(a, b):
    return a + b


def subtract(a, b):
    return a - b


def multiply(a, b):
    return a * b


def power(a, b):
    return a**b


def square_root(a):
    if a < 0:
        raise ValueError("Cannot compute square root of a negative number.")
    return math.sqrt(a)
