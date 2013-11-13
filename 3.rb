require 'prime'

def findPrimeFactors(n)
  largestPrime = nil
  i = 2
  while i <= n
    if n % i == 0 and Prime.prime? i 
      largestPrime = i
      n /= i
    end 
    i += 1
  end
  return largestPrime
end

puts findPrimeFactors(600851475143)