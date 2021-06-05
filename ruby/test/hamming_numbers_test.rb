gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/hamming_numbers'

class BeeramidTest < Minitest::Test
  def test_it
    assert_equal "hamming(1) should be 1"), hamming(1) == 1
    assert_equal "hamming(2) should be 2"), hamming(2) == 2
    assert_equal "hamming(3) should be 3"), hamming(3) == 3
    assert_equal "hamming(4) should be 4"), hamming(4) == 4
    assert_equal "hamming(5) should be 5"), hamming(5) == 5
    assert_equal "hamming(6) should be 6"), hamming(6) == 6
    assert_equal "hamming(7) should be 8"), hamming(7) == 8
    assert_equal "hamming(8) should be 9"), hamming(8) == 9
    assert_equal "hamming(9) should be 10"), hamming(9) == 10
    assert_equal "hamming(10) should be 12"), hamming(10) == 12
    assert_equal "hamming(11) should be 15"), hamming(11) == 15
    assert_equal "hamming(12) should be 16"), hamming(12) == 16
    assert_equal "hamming(13) should be 18"), hamming(13) == 18
    assert_equal "hamming(14) should be 20"), hamming(14) == 20
    assert_equal "hamming(15) should be 24"), hamming(15) == 24
    assert_equal "hamming(16) should be 25"), hamming(16) == 25
    assert_equal "hamming(17) should be 27"), hamming(17) == 27
    assert_equal "hamming(18) should be 30"), hamming(18) == 30
    assert_equal "hamming(19) should be 32"), hamming(19) == 32
  end
end
