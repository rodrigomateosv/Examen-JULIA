using SymPy
@vars x

# Definimos las funciones
f(x) = 1/sqrt(x)
g(x) = 3-x^2

# Calculamos los puntos de intersección
intersecciones = solve(f(x) - g(x), x)

# Asignamos los puntos de intersección a las variables a y b
c, d = map(x -> N(x, precision(BigFloat)), intersecciones)

# Creamos versiones numéricas de las funciones
f_num = lambdify(f(x))
g_num = lambdify(g(x))

# Calculamos la integral de la diferencia absoluta de las funciones entre a y b
using QuadGK
area, _ = quadgk(x -> abs(f_num(x) - g_num(x)), c, d)

println("El área de la región encerrada es ", area)

# Definición de las funciones
f = x^3 - 2x + 3
g = (x+1)^4

# Calculamos los puntos de intersección
intersecciones = solve(f - g)

# Asignamos los puntos de intersección a las variables a y b
a, b = map(x -> N(x, precision(BigFloat)), intersecciones)
# Creamos versiones numéricas de las funciones
f_num = lambdify(f)
g_num = lambdify(g)

# Calculamos la integral de la diferencia absoluta de las funciones entre a y b
using QuadGK
area, _ = quadgk(x -> abs(f_num(x) - g_num(x)), a, b)

println("El área de la región encerrada es ", area)



