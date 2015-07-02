# Name: Huimin He
# Email: hhe8@uchicago.edu

# Q1.

from operator import add, sub
def a_plus_abs_b(a, b):
    """Return a+abs(b), but without calling abs.

    >>> a_plus_abs_b(2, 3)
    5
    >>> a_plus_abs_b(2, -3)
    5
    """
    if b < 0:
        op = sub
    else:
        op = add
    return op(a, b)

# Q2.

def two_of_three(a, b, c):
    """Return x*x + y*y, where x and y are the two largest of a, b, c.

    >>> two_of_three(1, 2, 3)
    13
    >>> two_of_three(5, 3, 1)
    34
    >>> two_of_three(10, 2, 8)
    164
    >>> two_of_three(5, 5, 5)
    50
    """
    "*** YOUR CODE HERE ***"
    return a*a+b*b+c*c-min(a,b,c)**2

# Q3.

def if_function(condition, true_result, false_result):
    """Return true_result if condition is a true value, and false_result otherwise."""
    if condition:
        return true_result
    else:
        return false_result


def with_if_statement():
    """
    >>> with_if_statement() == 1
    True
    """
    if c():
        return t()
    else:
        return f()

def with_if_function():
    """
    >>> with_if_function() != 1
    True
    """
    return if_function(c(), t(), f())

def c():
    "*** YOUR CODE HERE ***"
    return 1

def t():
    "*** YOUR CODE HERE ***"
    return 1

def f():
    "*** YOUR CODE HERE ***"
    while 1:
        print()

# Q4.

def hailstone(n):
    """Print the hailstone sequence starting at n and return its length.

    >>> a = hailstone(10)  # Seven elements are 10, 5, 16, 8, 4, 2, 1
    10
    5
    16
    8
    4
    2
    1
    >>> a
    7
    """
    "*** YOUR CODE HERE ***"
    temp = int(n)
    print (temp)
    length = 1
    while temp != 1:
        if temp%2 == 0:
            temp = int(temp/2)
        elif temp%2 == 1:
            temp = temp*3+1
        print (temp)
        length += 1
    return length
