#=
what is the smallest positive number 
that is evenly divisible by all of the numbers from 1 to 20?

the great common diivisor
the least common multiple
1−20までの数をすべて素因数分解し、因数とその指数を辞書に格納し、その辞書の配列を作る。
もし既に因数があるが、指数が足りない場合は、指数が足りるまで足す。
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
