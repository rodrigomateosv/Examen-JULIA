#Calculame en julia  la suma inferior de Riemann de la función f(x)= 1/sqrt(x+1) en el intervalo [2,4] ,tomando una partición de 50 subinvervalos de igual amplitud.
using SymPy
z(x)=(1/sqrt(x+1))

# Definición de la función
f(x) = 1/sqrt(x+1)

# Límites del intervalo
a = 2
b = 4

# Número de subintervalos
n = 50

# Anchura de los subintervalos
dx = (b - a) / n

# Calculamos la suma inferior de Riemann
suma_inferior = 0
for i in 0:(n-1)
    x = a + i*dx
    suma_inferior += f(x)
end
suma_inferior *= dx

println("La suma inferior de Riemann es: ", suma_inferior)

# Definición de la función
f(x) = 1/sqrt(x+1)

# Anchura de los subintervalos
Δx = (4 - 2) / 50

# Calculamos la suma inferior de Riemann
areas_inf = [f((i-1)*Δx + 2)*Δx for i = 1:50]
sum_inf = sum(areas_inf)

println("La suma inferior de Riemann es: ", sum_inf)

