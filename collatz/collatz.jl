print("初期値を入力してください: ")
firstNum = parse(Int, readline())

function collatz(n)
  if n%2 == 0
    return n/2
  else
    return 3n+1
  end
end

colList = [firstNum]
while colList[end] != 1
  push!(colList,collatz(colList[end]))
end

println("colList's len=",length(colList))
for value in colList
  println("$(value%2): $value")
end
