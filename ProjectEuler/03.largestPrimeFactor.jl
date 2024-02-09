# What is the largest prime factor of the number 600851475143?

function erastosthenes(n)
  is_prime = trues(n)
  is_prime[1] = false

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

function primeTrilDiv(n)
  primeLst = []
  
  for i in 2:n
    is_prime = true
    
    for p in primeLst
      if i % p == 0
        is_prime = false
        break
      end
    end

    if is_prime
      push!(primeLst, i)
    end
  end
  return primeLst
end
for i in 
println(@time erastosthenes(100))
