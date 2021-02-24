gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/longest_common_subsequence'

class BeeramidTest < Minitest::Test
  def test_it
    assert_equal "", lcs("a", "b")
    assert_equal "abc", lcs("abcdef", "abc")
  end
end
