#calcular el volumen del solido de revolucion que se obtiene al rotar alrededor del eje y la gráfica de la funcion f(x)=1/ln(x+2) en el intervalo [0,3]
using SymPy
using QuadGK
fff(x)=1/log(x+2)
x=linspace(0,3,100)
#con envoltorios para que sea al rededor del eje y
inte=quadgk((2*PI*fff(x)*x), 0, 3)
println("El volumen del solido de revolucion que se obtiene al rotar alrededor del eje y la gráfica de la funcion f(x)=1/ln(x+2) en el intervalo [0,3] es: ",inte)
6.73304460289419*pi

using QuadGK

# Definición de la función
f(x) = 1/log(x+2)

# Calcular el volumen del sólido de revolución
vol, err = quadgk(x -> 2*pi*f(x)*x, 0, 3)

println("El volumen del sólido de revolución que se obtiene al rotar alrededor del eje y la gráfica de la función f(x)=1/ln(x+2) en el intervalo [0,3] es: ", vol)


#Calcular el volumen del sólido de revolución que se obtiene al rotar alrededor del eje y la gráfica de la función f f(x)=acos(x)  en el intervalo [0,1].

using SymPy
using QuadGK

#funcion 
f(x)=acos(x)

# Calcular el volumen del sólido de revolución
vol, err = quadgk(x -> 2*pi*f(x)*x, 0, 1)

println("El volumen del sólido de revolución que se obtiene al rotar alrededor del eje y la gráfica de la función f(x)=acos(x) en el intervalo [0,1] es: ", vol)




