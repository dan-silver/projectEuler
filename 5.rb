def leastCommonMultiple(n, m)
  (m*n)/(greatestCommonDivisor(n, m))
end

def greatestCommonDivisor(u, v)
  u = u.abs
  v = v.abs
  while (v > 0)
    u, v = v, u % v
  end
  u
end

def solve (n)
  puts n
  if n == 1 
    return 1
  end
  leastCommonMultiple n, solve(n-1)
end

puts solve 20
