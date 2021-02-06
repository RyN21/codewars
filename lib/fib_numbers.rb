require 'pry'

def productFib(prod)
  i = 1
  p = 1
  fib = [0, 1, 1]
  until prod == p || prod < p
    new_fib = fib[i] + fib[i+1]
    fib << new_fib
    p = fib[i] * fib[i+1]
    i += 1
  end
  return [fib[i], fib[i+1], true] if p == prod
  return [fib[i], fib[i+1], false] if p > prod
end
