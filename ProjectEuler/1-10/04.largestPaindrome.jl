# Find the largest palindrome made from the product of two 3-digit numbers.

overall::Vector{Int64} = []
sizehint!(overall, 628)

for k in 999:-1:100
  for j in 999:-1:100 
    target = string(k * j)
    tegrat = reverse(target)
    if target == tegrat
      append!(overall,parse(Int,target))
      break
    end
  end
end

println("The answer is $(maximum(overall))")
#=
(999 + 1)^2 = 1000000 = 999^2 + 2*999+ 1^2
999^2 = 1000000 - 1999 =9998001
=#