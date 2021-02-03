gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/iq_test'

class IqTestTest < Minitest::Test
  def test_it_adds_binary
    assert_equal iq_test("2 4 7 8 10"), 3
    assert_equal iq_test("1 2 2"), 1
  end
end
