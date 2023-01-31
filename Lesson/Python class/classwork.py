
from math import sqrt

def quadratic_eqution(a,b,c):
    x1 = ((-(b)+(sqrt((b*b)-(4*a*c))))/(2*a))
    x2 = ((-(b)-(sqrt((b*b)-(4*a*c))))/(2*a))
    print((-(b)+(sqrt((b**2)-(4*a*c)))))
    print(f"{x1} {x2} ")



quadratic_eqution(1,-2,-15)