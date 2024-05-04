# What is the largest prime factor of the number 600851475143?
num = 600851475143

#= エラトステネスの篩を利用すると、おそらくメモリ不足になる
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
print(erastosthenes(num))
=#

# まだまだ修正の余地はありそう
function largestPrimeFactor(n::Int64)::Vector{Int64}
  divisor = []
  #for p in isqrt(n):-1:2
  for p in 2:isqrt(n)
    if n % p == 0
      while n % p == 0
        n /= p
      end
      push!(divisor,p)
    end
  end
  
  if n != 1 || divisor == []
    append!(divisor,n)
  end
  return divisor
end

println(
  "The largest prime factor of the number $(num):\n",
  @time largestPrimeFactor(num)
)
