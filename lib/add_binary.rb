require 'pry'

def add_binary(a, b)
  sum = a + b
  get_binary(sum)
end

def get_binary(number)
  number.to_s(2)
end
