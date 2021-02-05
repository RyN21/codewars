require 'pry'

def productFib(prod)
  fibs = [0, 1]
  i = 0
  100.times do
    num = fibs[i] + fibs[i + 1]
    fibs << num
    i += 1
  end

  i = 0
  until prod == p
    fib = [0, 1]
    fib << 
    p = fibs[i] * fibs[i + 1]
    binding.pry
    return [fibs[i], fibs[i+1], true] if p == prod
    return [fibs[i], fibs[i+1], false] if p > prod
    i += 1
  end

  binding.pry
end
