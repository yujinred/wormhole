#!/usr/bin/env python

# solve linear equations

def solve(eq, var='x'):
    eq1 = eq.replace("=", "-(")+")";
    c = eval(eq1, {var:1j});
    return -c.real/c.imag
