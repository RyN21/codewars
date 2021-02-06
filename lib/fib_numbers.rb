require 'pry'

# MY SOLUTION
#=======================================================================================

def productFib(prod)
  i = 0
  p = 0
  fib = [0, 1]
  until prod == p || prod < p
    new_fib = fib[i] + fib[i+1]
    fib << new_fib
    p = fib[i] * fib[i+1]
    i += 1
  end
  p == prod ? [fib[i - 1], fib[i], true] : [fib[i - 1], fib[i], false]
end


# BEST PRACTICE  &&  CLEVER
#=======================================================================================

def productFib(prod)
  a, b = [0, 1]
  while prod > a * b
    a, b = [b, a + b]
  end
  [a, b, prod == a * b]
end


# ALTERNATIVE
#=======================================================================================

def productFib(prod)
  a, b = 1, 0
  a, b = a + b, a while a * b < prod
  [b, a, a * b == prod]
end


# ALTERNATIVE
#=======================================================================================

def productFib(prod)
  first, second = *consecutive_fibonacci_numbers.find { |a, b| a * b >= prod }
  [first, second, first * second == prod]
end

def consecutive_fibonacci_numbers
  Enumerator.new do |yielder|
    a, b = 1, 1

    loop do
      yielder.yield([a, b])
      a, b = b, a + b
    end
  end
end
