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
    p = fibs[i].to_f * fibs[i + 1]
    return [fibs[i], fibs[i+1], true] if p == prod
    i += 1
  end

  binding.pry
end
