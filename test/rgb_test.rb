gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  def test_it_adds_binary
    assert_equal rgb(0, 0, 0), '000000'
    assert_equal rgb(0, 0, -20), '000000'
    assert_equal rgb(300,255,255), 'FFFFFF'
    assert_equal rgb(173,255,47), 'ADFF2F')
  end
end
