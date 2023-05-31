#calcular la suma parcial de orden 20 de la serie de MacLaurin de la funcion f(x)=1/sqrt(x+1) en x=1/3 con 10 decimales
using SymPy
using Plots
@vars x real=true
ff(x)=1/sqrt(x+1)
pp(n) = N(series(ff(x), x, 0, n+1).removeO())
for i=1:20
    println("Suma funcional parcial de orden $i: $(pp(i))")
end




@vars n int=true
#el termino general de las sumas parciales de la serie de MacLaurin de la funcion f(x)=1/sqrt(x+1) es:
a(n)=(-1)^(n+1)*factorial(2*n-1)/(2^(2*n-1)*factorial(n-1)^2)
limit(abs(a(n)/a(n+1)), n=>oo)

#Calcular la suma parcial de orden 15 de la serie de Maclaurin de la función f left parenthesis x right parenthesis equals tg left parenthesis x right parenthesis en x equals 1 divided by 4 con 10 decimales
using SymPy
using Plots
@vars x real=true
ff(x)=tan(x)
pp(n) = N(series(ff(x), x, 0, n+1).removeO())
for i=1:15
    println("Suma funcional parcial de orden $i: $(pp(i))")
end
@vars n int=true

#bernoulli
@vars n int=true
#el termino general de las sumas parciales de la serie de MacLaurin de la funcion f(x)=tan(x) es:
a(n)=(-1)^(n+1)*2^(2*n)*factorial(2*n)*(2^(2*n)-1)*bernoulli(2*n)/(factorial(n)^2*(2*n))
limit(abs(a(n)/a(n+1)), n=>oo)
