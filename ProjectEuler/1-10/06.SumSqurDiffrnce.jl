#=
Find the diffeence between the sum of (the squares of the first 100 natural numbers) and the square of (the sum).

(n=100)Σ k^2 = n(n+1)(2n+1)/6
(1+2+...+n)^2 = (n(n+1)/2)^2 = n^2(n+1)^2/4

(1+2+...+n)^2 - Σ k^2 = n(n+1)/2 * (n(n+1)/2-(2n+1)/3)
=#

diff(n::Int64) = n*(n+1)/2 * (n*(n+1)/2-(2n+1)/3)
# println(convert(Int64,diff(100)))
println("the sum of the squares of the first 100 NNs is ",sum(i^2 for i in 1:100))
println("the square of the sum of the first 100 NNs is ",sum(i for i in 1:100)^2)
println(diff(100))
