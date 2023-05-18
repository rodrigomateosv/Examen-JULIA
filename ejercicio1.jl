

a(n) = 1/(big(n)*2^big(n))
b(n) = factorial(big(n))/big(n^big(n))

sum_a = sum(a(n) for n in 1:100)
sum_b = sum(b(n) for n in 1:100)

println("La suma parcial de orden 100 de la serie a(n) es ", sum_a)
println("La suma parcial de orden 100 de la serie b(n) es ", sum_b)

