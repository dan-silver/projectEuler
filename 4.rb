def findLargestPalindrome(digits)
  largest = 0
  n = ("9"*digits).to_i
  n.downto(n/2).each{ |k|
    n.downto(n/2).each{ |i|
      product = k * i
      largest = product if product.isPalindrome? and product > largest
    }
  }
  largest
end

class Integer
  def isPalindrome?
    str = self.to_s
    return true if str == str.reverse
    false   
  end
end

puts findLargestPalindrome (3)
