gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/fib_numbers'

class FibNumbersTest < Minitest::Test
  def test_it_adds_binary
    assert_equal productFib(4895), [55, 89, true]
    assert_equal productFib(5895), [89, 144, false]
  end
end
