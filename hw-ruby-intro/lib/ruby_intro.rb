# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort!
    arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 or arr.length == 1
    return false
  end
  compArr = Set.new
  comp = 0
  for i in arr
    comp = n-i
    if compArr.include?(comp)
      return true
    else
      compArr.add(i)
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+ name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  return (s.downcase.match(/^[bcdfghjklmnpqrstvwxyz]/) != nil)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #Check if string valid binary
  if (s[/[^0-1]/] != nil)
    return false
  end
  #if last two bits are zero -> it is defintely by 4
  return ((s == "0")  or ((s[-2..-1]) == "00"))
end

# Part 3

class BookInStock
  def initialize(_isbn, _price)
    if ((_isbn == '') or (_price <= 0))
      raise ArgumentError, "Argument(s) is/are not correct"
    end
    @isbn = _isbn
    @price = _price
  end
  attr_accessor :isbn, :price
  def price_as_string
    return ('$%.2f' % @price)
  end
end
