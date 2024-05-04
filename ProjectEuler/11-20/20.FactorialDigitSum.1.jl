#Find the sum of all the digits in the number 100!
@time factInt = factorial(big(100))
@time digitArr = map(x -> parse(Int,x),split(string(factInt),""))

println(digitArr)
println("Answer: ",sum(digitArr))