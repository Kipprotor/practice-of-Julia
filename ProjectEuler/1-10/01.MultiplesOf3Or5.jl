# find the sum of all the multiples of 3 or 5 below 1000
function sum_Multiples(d,below)
  max = below - 1
  floor(Int,max/d) * (floor(Int,max/d) + 1)*d / 2
end

function sum_Multiples_of_3_or_5(n)
  # sumOf 3 + sumOf 5 = sumOf 3 or 5 + sumOf 15
  return sum_Multiples(3,n) + sum_Multiples(5,n) - sum_Multiples(15,n)
end

#=
for i in [3,5,15]
  println(sum_Multiples(i,20))
end
=#

println("the sum of all the multiples of 3 or 5 below 1000 is\n", 
  sum_Multiples_of_3_or_5(1000))