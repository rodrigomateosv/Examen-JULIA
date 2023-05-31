#Calcular el radio de convergencia de la serie de potencias An=(x-3)^n/ sqrt indice 3(4^n)



using SymPy

@vars x n

# Definición de la función a_n y a_{n+1}
a_n = (x-3)^n / (4^n)^(1/3)
a_n_plus_1 = (x-3)^(n+1) / (4^(n+1))^(1/3)

# Cálculo del límite
L = limit(abs(a_n_plus_1/a_n), n, oo)

# Cálculo del radio de convergencia
R = 1/L

println("El radio de convergencia es: ", R)
 


import Pkg
Pkg.add("SymPy")



