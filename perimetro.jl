#Calcula en julia el perímetro de la región encerrada entre las gráficas de las funciones f(x)= 1/sqrt(x)
#y g(x)= 3-x^2

using SymPy
@vars x

# Definimos las funciones
f(x) = 1/sqrt(x)
g(x) = 3-x^2

# Calculamos las derivadas de las funciones
f_prime_sym = diff(f(x), x)
g_prime_sym = diff(g(x), x)

# Calculamos los puntos de intersección
intersecciones = solve(f(x) - g(x), x)

# Asignamos los puntos de intersección a las variables a y b
c, d = map(x -> N(x, precision(BigFloat)), intersecciones)

# Creamos versiones numéricas de las funciones de derivada
f_prime_num = lambdify(f_prime_sym)
g_prime_num = lambdify(g_prime_sym)

# Calculamos la longitud de arco de cada función entre a y b
using QuadGK
arco_f, _ = quadgk(x -> sqrt(1 + (f_prime_num(x))^2), c, d)
arco_g, _ = quadgk(x -> sqrt(1 + (g_prime_num(x))^2), c, d)

# Calculamos el perímetro sumando las dos longitudes de arco
perimetro = arco_f + arco_g

println("El perímetro de la región encerrada es ", perimetro)

Calcular el perímetro de la región encerrada entre las gráficas de las funciones f f(x) = sqrt(x-2)  y g(x) = x^2-6x+8.

using SymPy
@vars x
# Definimos las funciones
f(x) = sqrt(x-2)
g(x) = x^2-6x+8
