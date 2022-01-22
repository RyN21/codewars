gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/calculator'

class CalculatorTest < Minitest::Test
  def test_it
    calc = Calculator.new

    assert_equal  20, calc.evaluate("4 * 5")
    assert_equal  0.8, calc.evaluate("4 / 5")
    assert_equal  -1, calc.evaluate("4 - 5")
    assert_equal  9, calc.evaluate("4 + 5")
    assert_equal  34, calc.evaluate("4 + 5 * 6")
    assert_equal  7, calc.evaluate("2 / 2 + 3 * 4 - 6")
    assert_equal  127, calc.evaluate("127")
  end
end


# Create a simple calculator that given a string of
# operators (), +, -, *, / and numbers separated by spaces
# returns the value of that expression

# Example:

# Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7
# Remember about the order of operations! Multiplications and
# divisions have a higher priority and should be performed
# left-to-right. Additions and subtractions have a lower
# priority and should also be performed left-to-right.
