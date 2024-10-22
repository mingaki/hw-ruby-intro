# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |elm|
    total += elm
  end
  return total
end

def max_2_sum arr
  arr.sort().last(2).sum
end

def sum_to_n? arr, n
  seen = {}

  arr.each do |elm|
    if seen[n - elm]
      return true
    end
    seen[elm] = true
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # '!!' (double negate) cast an expression to boolean
  !!(s =~ /^[a-z&&[^aeiou]]/i)
end

def binary_multiple_of_4? s
  !!(s =~ /^[01]*(0?0)$/)
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if (isbn.length == 0) || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$%.2f" % @price
  end

end
