require 'pry'

def iq_test(nums)
  even = []
  odd = []
  nums.split().each do |n|
    int = n.to_i
    even << n if int.even?
    odd << n if int.odd?
  end
  if even.count == 1
    num = even[0]
    index = nums.split().index(num)
    index + 1
  else
    num = odd[0]
    index = nums.split().index(num)
    index + 1
  end
end
