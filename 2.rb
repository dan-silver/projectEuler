previousNumber = 1
currentNumber = 2
sum = 0
while (currentNumber < 4000000) 
  temp = currentNumber
  currentNumber = previousNumber + currentNumber
  previousNumber = temp
  sum += currentNumber unless currentNumber % 2 != 0
end
puts sum
