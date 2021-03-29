gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/most_frequently_used_words_in_a_text'

class MostFrequentlyUsedWordsInATextTest < Minitest::Test
  def test_it
    assert_equal ['ab', 'ba'], permutations('ab').sort
    assert_equal ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa'], permutations('aabb').sort
end
