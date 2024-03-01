#=
find natural numbers a, b, c that satisfy the follwing conditions:
a < b < c
a^2 + b^2 = c^2
a + b + c = 1000
and calcuate a*b*c

a + b + c = 1000 ⇒ c = 10^3 - (a+b)
∴ a^2 + b^2 = (10^3 - (a+b) )^2
= 10^6 - 2(a+b)10^3 + (a+b)^2 

∴ 0 = 10^6 - 2(a+b)10^3 + 2ab
∴ 0 = 5*10^5 - (a+b)10^3 + ab
ab = (a+b)10^3 - 5*10^5

ab/10^3 = (a+b) - 5*10^2
=#

cond(a,b) = a*b - (a+b)*10^3 + 5*10^5

cnt = 0
for a in 1:998
  for b in (a+1):999
    global cnt += 1    
    if cond(a,b) == 0
      println("count: ",cnt)
      c = 10^3 - (a+b)
      println("Answer of a,b,c: $(a), $(b), $(c)")
      ans = a*b*c
      println("Answer of Project Euler 9 :$(ans)")
      break
    end
  end
end
  