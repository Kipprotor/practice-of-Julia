# Find the sum of all the primes below 2*10^6.

#print(LOAD_PATH)
include("../memo/primeLst.jl")
import  .primeLst

num = primeLst.erastosthenes(2*10^6)
println(sum(num))