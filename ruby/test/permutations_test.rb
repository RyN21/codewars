gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/permutations'

class MostFrequentlyUsedWordsInATextTest < Minitest::Test
  def test_it
    assert_equal ['ab', 'ba'], permutations('ab').sort
    assert_equal ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa'], permutations('aabb').sort
  end
end


# In this kata you have to create all permutations of an input
# string and remove duplicates, if present. This means, you have
# to shuffle all letters from the input in all possible orders.

# Examples:

# permutations('a'); # ['a']
# permutations('ab'); # ['ab', 'ba']
# permutations('aabb'); # ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']
# The order of the permutations doesn't matter.
