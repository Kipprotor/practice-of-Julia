# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

function powerDigitSum(n::Int64)::Int64
  bigN = big(2)^n
  result = 0
  for i in digits(bigN)
    result += i
  end
  return result
end

@time println("The Answer is: ",powerDigitSum(1000))