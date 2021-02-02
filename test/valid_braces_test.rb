gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/valid_braces'

class ValidBracesTest < Minitest::Test
  def test_it_adds_binary
    assert_equal valid_braces('(){}[]'), true
    assert_equal valid_braces('({[]})'), true
    assert_equal valid_braces('(]'), false
    assert_equal valid_braces('[(])'), false
    assert_equal valid_braces('[({})](]'), false
  end
end

# Write a function that takes a string of braces, and determines if the order of the braces is valid.
# It should return true if the string is valid, and false if it's invalid.

# This Kata is similar to the Valid Parentheses Kata,
# but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!

# All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

# What is considered Valid?
# A string of braces is considered valid if all braces are matched with the correct brace.
