#cual es menor n tal que la suma parcial de orden n da una aproximacion de las suma de la serie alternada (-1)^n*(5/sqrt(n)) con un error de 10^-3


using SymPy
using Plots
@vars n int=true
a(n)=(-1)^(n)*(5/sqrt(n))
c(n)=5/sqrt(n)
limit(abs(c(n)/c(n+1)), n=>oo)
error=10^-3
i=1
while abs(c(i))>error
    i+=1
end
cn=[c(n) for n=1:i]
println("Orden necesario: $i")
println("Aproximación de e^x: $(sum(cn))")
println("n tiene por tanto el valor de $i")

#¿Cual es menor n tal que la suma parcial de orden n da una aproximación de la suma de la serie alternada sum from i equals 1 to infinity of left parenthesis negative 1 right parenthesis to the power of n fraction numerator n plus 1 over denominator n squared end fraction con un error menor de 10 to the power of negative 6 end exponent?

#serie alternada

using SymPy
using Plots
@vars n int=true
a(n)=(-1)^(n)*(n+1)/(n^2)
c(n)=(n+1)/(n^2)
limit(abs(c(n)/c(n+1)), n=>oo)
error=10^-6
i=1
while abs(c(i))>error
    i+=1
end
cn=[c(n) for n=1:i]
println("Orden necesario: $i")
println("Aproximación de e^x: $(sum(cn))")
println("n tiene por tanto el valor de $i")




#f(x)=   

#¿Cual es menor n tal que la suma parcial de orden n da una aproximación de la suma de la serie alternada sum from i equals 0 to infinity of fraction numerator left parenthesis negative 1 right parenthesis to the power of n over denominator 2 n end fraction con un error menor de 10 to the power of negative 6 end exponent?

#serie alternada
using SymPy
using Plots
@vars n int=true
# Definir las funciones a(n) y c(n)
a(n)=(-1)^(n)/(2*n)
c(n)=1/(2*n)
limit(abs(c(n)/c(n+1)), n=>oo)
# Definir el umbral de error
error=10^-6
# Iniciar la variable i
i=0
# Incrementar i mientras abs(c(i)) sea mayor que el error
while abs(c(i))>error
    i+=1
end
# Crear un arreglo cn que contiene los valores de c(n) para n de 1 a i
cn=[c(n) for n=1:i]
println("Orden necesario: $i")
println("Aproximación de e^x: $(sum(cn))")
println("n tiene por tanto el valor de $i")





