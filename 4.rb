def findLargestPalindrome
  largest = 0
  999.downto(100).each{ |k|
    k.downto(100).each{ |i|
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

puts findLargestPalindrome
