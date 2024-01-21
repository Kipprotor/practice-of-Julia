function fizzbuzz(n)
  if n%15 == 0
    println("fizzbuzz")
  elseif n%5 == 0
    println("buzz")
  elseif n%3 == 0
    println("fizz")
  else
    println(n)
  end
end

println("fizzbuzz by function")
for i in 1:42
  fizzbuzz(i)
end