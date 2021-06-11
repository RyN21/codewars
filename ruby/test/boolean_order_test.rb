gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/boolean_order'

class SnailSortTest < Minitest::Test
  def test_it
    assert_equal 2, solve("tft","^&")
    assert_equal 16, solve("ttftff","|&^&&")
    assert_equal 339, solve("ttftfftf","|&^&&||")
    assert_equal 851, solve("ttftfftft","|&^&&||^")
    assert_equal 2434, solve("ttftfftftf","|&^&&||^&")
  end
end


# In this Kata, you will be given boolean values and boolean
# operators. Your task will be to return the number of
# arrangements that evaluate to True.

# t,f will stand for true, false and the operators will
# be Boolean AND (&), OR (|), and XOR (^).

# For example, solve("tft","^&") = 2, as follows:

# "((t ^ f) & t)" = True
# "(t ^ (f & t))" = True
# Notice that the order of the boolean values and
# operators does not change. What changes is the position of braces.

# More examples in the test cases.

# Good luck!
