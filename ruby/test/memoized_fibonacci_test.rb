gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/memoized_fibonacci'

class MemoizedFibonacciTest < Minitest::Test
  def test_it
    assert_equal 12586269025, fibonacci(50)
    assert_equal 1548008755920, fibonacci(60)
    assert_equal 190392490709135, fibonacci(70)
  end
end
