#=
what is the smallest positive number 
that is evenly divisible by all of the numbers from 1 to 20?
=#


function eucldGcd(n1,n2)
  n1>n2 ? (a,b) = (n1,n2) : (a,b) = (n2,n1)
  n = a%b
  while n != 0
    return eucldGcd(b,n)
  end
  return b
end

result = 1
for i in 1:20
  global result = result * i ÷ eucldGcd(result,i)
end

println("The smallest positive number that is evenly divisible
by all of the numbers from 1 to 20: ",result)
