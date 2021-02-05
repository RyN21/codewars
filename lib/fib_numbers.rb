require 'pry'

def productFib(prod)
  fibs = [0, 1]
  i = 0
  50.times do
    num = fibs[i] + fibs[i + 1]
    fibs << num
    i += 1
  end
  binding.pry
  
  prod.to_f / fibs[25]
end
