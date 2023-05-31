#Calcular la suma parcial de orden 15 de la serie de Maclaurin de la función f(x)= tg(x) en x= 1/4 con 10 decimales

using SymPy

@vars x real=true

# la función serie devuelve la serie de Taylor alrededor de x=0
# usamos removeO() para eliminar el término "O(x^n)"
p(n) = series(tan(x), x, 0, n+1).removeO()

# queremos la suma parcial de orden 15
p15 = p(15)

# ahora evaluamos la serie en x = 1/4
val = subs(p15, x => 1/4)

# redondeamos al decimal 10
val = N(val, 10)

println("El valor de la suma parcial de orden 15 en x = 1/4 es ", val)

#calcular la suma parcial de orden 20 de la serie de MacLaurin de la funcion f(x)=1/sqrt(x+1) en x=1/3 con 10 decimales
using SymPy

@vars x real=true
# la función serie devuelve la serie de Taylor alrededor de x=0
# usamos removeO() para eliminar el término "O(x^n)"
p(n) = series(1/sqrt(x+1), x, 0, n+1).removeO()

# queremos la suma parcial de orden 20
p20 = p(20)

# ahora evaluamos la serie en x = 1/3
val = subs(p20, x => 1/3)

# redondeamos al decimal 10
val = N(val, 10)

println("El valor de la suma parcial de orden 20 en x = 1/3 es ", val)




