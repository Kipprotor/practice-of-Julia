#=
The sum of the even-number in the Fibonacci sequence whose values under 4 * 10^6

If index is mulitple of 3, Fib(index) is even.
=#

function makeFiboSeq_under(n)
  x = y = 1
  lst = [x,y]
  while true
    v = lst[end] + lst[end-1]
    push!(lst,v)
    if v > n
      break
    end
  end
  return lst
end

fiboLst = makeFiboSeq_under(4*10^6)
len = floor(Int, length(fiboLst)/3)
#println(fiboLst)
println(sum(fiboLst[3:3:3*len]))
