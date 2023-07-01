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

# Imprime el área
println("El área encerrada entre las funciones f(x)=x^3 - 2x + 3 y g(x)=(x+1)^4 es: ", area)


using SymPy, Plots

# Define la variable simbólica x
@vars x real=true

# Define dos funciones f(x) y g(x) como ejemplo
f = x^3 - 2x + 3
g = (x+1)^4

# Encuentra los puntos de intersección resolviendo f(x) = g(x)
intersection_points = N(solve(f - g))


# Ordena los puntos de intersección
sort!(intersection_points)

# Toma los dos primeros puntos como límites de integración
a1 =intersection_points[4]
b1 = intersection_points[1]

# Calcula el área entre las curvas integrando |f(x) - g(x)| desde a hasta b
area = N(abs(integrate(f -            g, (x, a1, b1))))

# Imprime el área
println("El área encerrada entre las funciones f(x)=$(f) y g(x)=$(g) es: $area")

    # Crear las gráficas de las funciones
    plot(f, a-1, b+1, label="f(x) = $(f)", fill=(0, :auto))
    plot!(g, a-1, b+1, label="g(x) = $(g)", fill=(0, :auto))

    # Muestra la gráfica
    display(plot!())
else
    println("Las funciones no tienen suficientes puntos de


