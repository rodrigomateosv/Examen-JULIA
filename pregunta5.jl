#Calcular el volumen del sólido de revolución que se obtiene al rotar alrededor del eje y la gráfica de la función f(x) =arccos(x)
#en el intervalo [0,1]

using SymPy
using QuadGK

# Definir la variable simbólica
@vars x

# Definir la función
f(x) = acos(x)

# Definir el integrando del volumen
integrando = pi * f(x)^2

# Calcular el volumen
volumen, error = quadgk(x->N(integrando(x)), 0, 1)

println("El volumen del sólido de revolución es ", volumen)


