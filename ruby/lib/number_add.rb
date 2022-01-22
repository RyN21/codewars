require 'pry'

def num_add(num)
  total = 0
  until num == 0
    total += num
    num -= 1
  end
  total
end
