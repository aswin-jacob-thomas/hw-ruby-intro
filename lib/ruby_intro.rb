# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  sum = 0
  arr.sort!
  if arr.empty?
    return sum; 
  elsif arr.length == 1
    return arr[0];
  else
    return arr[arr.length-1]+arr[arr.length-2];
  end
end

def sum_to_n? arr, n
  found = false
  if arr.empty? || arr.length == 1
    return false;
  end
  
  arr.each_index {|index| current_element = arr[index];
                          if arr[0..index-1].include?(n-current_element)
                            found = true
                          end;
                  }
  if found
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, "+name.to_s;
end

def starts_with_consonant? s
  if s.empty? 
    return false;
  elsif !s[0].match(/^[[:alpha:]]$/)  
    return false
  else  
    !(s.upcase =~ %r{^[AEIOU]})
  end  
end

def binary_multiple_of_4? s
  puts s
  if s.empty? 
    return false;
  elsif s !~ %r{^(0|1)+$}
    return false;
  else
    total_sum = 0
    i=0
    s.reverse.each_char {|c| 
      total_sum += c == '0' ? 0 : 2**i;
      i=i+1;
    }
    total_sum%4 == 0
  end  
end
# puts binary_multiple_of_4?("0");
# Part 3

class BookInStock
  def initialize(isbn,price)
    raise ArgumentError, 'Passed argument is wrong' unless !isbn.empty? && price > 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    '$'+ '%.2f' % @price
  end  

end
