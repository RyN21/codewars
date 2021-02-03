require 'pry'

# MY SOLUTION
#=======================================================================================

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


# BEST PRACTICE  && CLEVER
#=======================================================================================

def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end


# ALTERNATIVE
#=======================================================================================

def iq_test(numbers)
  ar = numbers.split.map(&:to_i)
  ar.index(ar.partition(&:even?).find(&:one?).first) + 1
end


# ALTERNATIVE
#=======================================================================================

def iq_test(numbers)
  arr = numbers.split(' ').map{|e| e.to_i}
  evenCount = arr.select {|e| e.even?}.count
  oddCount = arr.select {|e| e.odd?}.count

  arr.each_with_index do |e,i|
    if evenCount > oddCount
      return i + 1 if e.odd?
    else
      return i + 1 if e.even?
    end
  end
end
