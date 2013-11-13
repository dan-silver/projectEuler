multiples = []
(1..999).each do |i|
  multiples << i if (i % 3) == 0 or (i % 5) ==0  
end
puts multiples.inject(:+)
