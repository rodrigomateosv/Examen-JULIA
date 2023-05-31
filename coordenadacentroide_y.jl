#Calcular en julia la coordenada y del centroide de la región encerrada entre las gráficas de las funciones f(x)= e^(x-2)
#y g(x)= sqrt(x)

using SymPy
@vars x

# Definimos las funciones
f(x) = exp(x-2)
g(x) = sqrt(x)

# Calculamos las intersecciones
intersecciones = solve(f(x) - g(x), x)

# Asignamos los puntos de intersección a las variables a y b
c, d = N.(intersecciones)

# Calculamos el área entre las dos funciones
using QuadGK
A, _ = quadgk(x -> f(x) - g(x), c, d)

# Calculamos la integral para el cálculo del centroide
integral, _ = quadgk(x -> x * (f(x) - g(x)), c, d)

# Calculamos la coordenada y del centroide
y_centroide = 1/A * integral

println("La coordenada y del centroide es ", y_centroide)
