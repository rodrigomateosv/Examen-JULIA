#Calcular el radio de convergencia de la serie de potencias An=(x-3)^n/ sqrt indice 3(4^n)

using SymPy

@vars x real=true
@vars n integer=true

# definir la serie
a(n) = (x - 3)^n / (4^n)^(1/3)

# calcular el límite usando la prueba de la raíz
L = limit(abs(a(n+1)/a(n)), n => Inf)

# el radio de convergencia es 1 / L
R = 1 / L

println("El radio de convergencia de la serie es ", R)

