gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sum_of_factors'

class SumByFactorsTest < Minitest::Test
  def test_it
    assert_equal sumOfDivided([12, 15]), [ [2, 12], [3, 27], [5, 15] ]
  end
end
