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

using SymPy, Plots

@vars x real=true

# Definición de las funciones
f = x^3 - 2x + 3

g = (x+1)^4

# Diferencia entre las funciones
diff = f - g

# Crear las gráficas
plot(f, -3, 3, label="f(x) = x^3 - 2x + 3")

plot!(g, -3, 3, label="g(x) = (x+1)^4")

# Encuentra los puntos de intersección
m, n = solve(diff)

# Calcular el área
area = N(abs(integrate(f - g, (x, m, n))))
println("El área es: ", round(area; digits=5), "cm


