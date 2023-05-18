#Calcular el area encerrada entre las funciones f(x)= 1/sqrt(x)
#y g(x)= 3-x^2

using SymPy
@vars x real=true

# Definir las funciones
f(x) = 1/sqrt(x)
g(x) = 3 - x^2

# Encontrar los puntos de intersección
intersections = solve(f(x) - g(x))

# Calcular el área entre las funciones
area = integrate(abs(f(x) - g(x)), (x, intersections[1], intersections[2]))

# Convertir el resultado a número decimal
N(area)


