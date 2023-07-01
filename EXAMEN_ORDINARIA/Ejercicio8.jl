#Calcular la coordenada x del centroide de la región encerrada entre las gráficas de las funciones f(x) = sqrt(x-2) y g(x) = x^2-6x+8

# funciones
f(x) = sqrt(x-2)
g(x) = x^2-6x+8

#calcular la coordenada x del centroide de la región encerrada entre las gráficas de las funciones f(x)=sqrt(x-2) y g(x)=x^2-6x+8
using SymPy, Plots
@vars x real=true
f1=sqrt(x-2)
f2=x^2-6x+8
aq=f1-f2
plot(f1, 0, 5, label="f(x)=sqrt(x-2)")
plot!(f2, 0, 5, label="g(x)=x^2-6x+8")
m, n=solve(aq)
area=N(integrate(f1-f2, m, n))
println("El area encerrada entre las funciones f(x)=sqrt(x-2) y g(x)=x^2-6x+8 es: ",area)
#calcular la coordenada x del centroide de la región encerrada entre las gráficas de las funciones f(x)=sqrt(x-2) y g(x)=x^2-6x+8
x1=N(integrate(x*(f1-f2), m, n))
x2=N(integrate((f1-f2), m, n))
x=x1/x2
println("La coordenada x del centroide de la región encerrada entre las gráficas de las funciones f(x)=sqrt(x-2) y g(x)=x^2-6x+8 es: ",x)