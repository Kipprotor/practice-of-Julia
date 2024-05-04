# Find the sum of all the primes below 2*10^6.
function erastosthenes(n)
  is_prime = trues(n)
  is_prime[1] = false

  # i が n の平方根に達するまで繰り返す。
  for i in 2:isqrt(n)
    #println(i)
    if is_prime[i]
        is_prime[i*i:i:n] .= false
        #println("取り除いた数列:初項",i*i,":公差",i,":末項はこれ以下",n)
        #println([i for i in 2:n if is_prime[i]])
    end
  end
  return [i for i in 2:n if is_prime[i]]
end

num = erastosthenes(2*10^6)
println(sum(num))