function fib(n)
  x,y = (1,1)
  for i = 1:n
    x,y = (y, x+y)
  end
  x
end

let x = 0
    while x < 10
        println(fib(x))
        x += 1
    end
end
