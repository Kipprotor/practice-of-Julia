#=
If n is mulitple of 3, Fib(n) is even.

F_1 = 1, F_2 = 1, F_n+2 = F_n + F_n+1,
F_n = x, F_n+1 = y,
[x,y,x+y], [x+2y,2x+3y,3x+5y], [5x+8y,8x+13y,13x+21y]

even is x+y,3x+5y,13x+21y...

3x+5y=(x+2y)+(2x+3y),

13x+21y=(5x+8y)+(8x+13y)
={ (x+2y)+2(2x+3y) } + { 2(x+2y)+3(2x+3y) }
=#

function evenFibo1(n)
  x = y = 1
  if n == 1
    return x+y
  else
    for i in 1:n-1
      x,y = x+2y, 2x+3y 
    end
    return x+y
  end
end

function evenFibo2(n)
  value = 1/√5 * ((2+√5)^n - (2-√5)^n)

  return floor(Int, value)
end

fibo1Lst = []
fibo2Lst = []

for x in 1:10
  push!(fibo1Lst, evenFibo1(x))
  push!(fibo2Lst, evenFibo2(x))
end

println(fibo1Lst)
println(fibo2Lst)