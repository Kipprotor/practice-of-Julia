# what is the 10001st prime number?

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

function main()
  limit = 50000
  while true
    primeLst = erastosthenes(limit)
    if length(primeLst) >= 10001
      println("the list of prime numbers under $limit is $primeLst")
      println("the 10001st prime number is ",primeLst[10001])
      break
    else
      limit *= 2
    end
  end
end

main()
