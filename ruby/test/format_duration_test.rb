gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/format_duration'

class FormatDurationTest < Minitest::Test
  def test_it
    assert_equal "1 second"), format_duration(1)
    assert_equal "1 minute and 2 seconds"), format_duration(62)
    assert_equal "2 minutes"), format_duration(120)
    assert_equal "1 hour"), format_duration(3600)
    assert_equal "1 hour, 1 minute and 2 seconds"), format_duration(3662)
  end
end
