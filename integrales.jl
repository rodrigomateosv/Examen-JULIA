using Plots, SymPy, LaTeXStrings

# Definición de las funciones
@vars x real = true
f(x) = log(x)
g(x) = (x-1)/2

# Cálculo de las raíces
raices = N(solve(g(x) - f(x)))

# Cálculo de la integral 1
using SymPy, QuadGK
@vars x real = true
h(x) = abs(f(x) - g(x))
a = raices[1]
b = raices[2]
solucion = quadgk(PI * h(x)^2, a, b, rtol = 1e-10)
resultado1 = N(solucion[1])

# Cálculo de la integral 2
@vars x, y real = true
h(x) = abs(f(x) - g(x))
solucion2 = quadgk(2 * PI * x * h(x), a, b, rtol = 1e-10)
resultado2 = N(solucion2[1])

# Cálculo de las coordenadas del centroide
cx = integrate(x * (f(x) - g(x)), a, b) / integrate(f(x) - g(x), a, b)
cy = 1/2 * integrate(f(x)^2 - g(x)^2, a, b) / integrate(f(x) - g(x), a, b)

# Dibujar el centroide
scatter!((cx, cy), label = "centroide", legend = :topleft)

# Cálculo de la integral 3
solucion3 = quadgk(2 * PI * cx * abs(f(x) - g(x)), a, b, rtol = 1e-10)
resultado3 = N(solucion3[1])









