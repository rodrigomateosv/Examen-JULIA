#cual de las siguientes funciones es una funcion de ddensidad de probabilidad?
#han de ser no negativas y su integral tiene que se 1
a(x)=2/(PI*(2+x^2))
b(x)=e^(-(3x+e^-x))
c(x)=(2*e^(-2x))/((1+e^(-x))^3)
d(x)=0.25*e^((-(abs(x)))/(4))


using SymPy
using QuadGK


#¿y(x)>=0?
if y(x)>=0
    println("y(x) es no negativa")
else
    println("y(x) es negativa")
end

@vars x real=true
u=integrate(e(x), -oo, oo)
y2=quadgk(y(x), -1000000000000, 10000000000000)
l=integrate(l(x), -oo, oo)
m=integrate(j(x), -oo, oo)

println("e(x) es una funcion de densidad de probabilidad? ", e)
println("y(x) es una funcion de densidad de probabilidad? ", y)
println("l(x) es una funcion de densidad de probabilidad? ", l)
println("m(x) es una funcion de densidad de probabilidad? ", m)
