gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/longest_common_subsequence'

class BeeramidTest < Minitest::Test
  def test_it
    assert_equal "123  45\n6", justify('123 45 6', 7)
  end
end
