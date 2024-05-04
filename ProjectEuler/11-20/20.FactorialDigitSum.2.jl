#Find the sum of all the digits in the number 100!
function digits(n)
  if n < 0
    throw(DomainError(n, "n must be non-negative"))
  elseif n < 10
    return [n]
  else
    return [n % 10; digits(div(n, 10))...]
  end
end

@time factInt = factorial(big(100))
@time digitArr = digits(factInt)
#println(digitArr)
println("Answer: ",sum(digitArr))