# How many paths are there through a 20x20 grid?
#=
function perm(n::Int64,r::Int64)::Int64
  if r > n
    throw(DomainError("1st arg must be >= 2nd arg"))
  else
    r = r > 0 ? r : 1
    return reduce(*, Vector(r:n))
  end
end

function latticePaths(x::Int64, y::Int64)
  #<cond> ? <true> : <false>
  (b,s) =  x > y ? (x,y) : (y,x) 
  # factorial(x+y) / (factorial(x) * factorial(y))
  return perm(b+s,b)/factorial(s)
end
=#

function latticePaths(x::Int64, y::Int64)::Int64
  factorial(big(x+y)) / (factorial(big(x)) * factorial(big(y)))
end

@time println("The answer is $(latticePaths(20,20))")
