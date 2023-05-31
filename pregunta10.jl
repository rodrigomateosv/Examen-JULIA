#Calculame en julia  la suma inferior de Riemann de la función f(x)= 1/sqrt(x+1) en el intervalo [2,4] ,
#tomando una partición de 50 subinvervalos de igual amplitud.
# el intervalo esta mal puesto
# Definir la función
# Definir la función
# Definir la función
f(x) = 1/sqrt(x + 1)

# Definir el intervalo y el número de particiones
c, d = 2, 4
n = 50

# Definir la longitud del subintervalo
h = (d - c) / n

# Calcular la suma inferior de Riemann
for i in 1:n
    suma_inferior += f(c + i*h)
end
suma_inferior
 sum(f(c + i*h) for i in 0:(n-1)) * h

 println("La suma inferior de Riemann para f en el intervalo [$a, $b] con $n particiones es: ", suma_inferior)
