require 'pry'

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
