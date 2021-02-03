gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/iq_test'

class IqTestTest < Minitest::Test
  def test_it_adds_binary
    assert_equal iq_test("2 4 7 8 10"), 3
    assert_equal iq_test("1 2 2"), 1
    assert_equal iq_test("1 2 1 1"), 2
  end
end


# Bob is preparing to pass IQ test. The most frequent task in this test is
# to find out which one of the given numbers differs from the others.
# Bob observed that one number usually differs from the others in evenness.
# Help Bob — to check his answers, he needs a program that among the given numbers
# finds one that is different in evenness, and return a position of this number.

# ! Keep in mind that your task is to help Bob solve a real IQ test,
# which means indexes of the elements start from 1 (not 0)
