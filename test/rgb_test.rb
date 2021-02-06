gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  def test_it_adds_binary
    assert_equal rgb(0, 0, 0), '000000'
    assert_equal rgb(0, 0, -20), '000000'
    assert_equal rgb(300,255,255), 'FFFFFF'
    assert_equal rgb(173,255,47), 'ADFF2F'
  end
end


# The rgb function is incomplete. Complete it so that passing in RGB decimal values
# will result in a hexadecimal representation being returned.
# Valid decimal values for RGB are 0 - 255. Any values that fall out of that
# range must be rounded to the closest valid value.

# Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.
