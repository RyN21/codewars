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
  end
end
