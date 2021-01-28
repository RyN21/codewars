gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/tickets'

class TicketsTest < Minitest::Test
  def test_it_adds_binary
    assert_equal tickets([25, 25, 50]), 'YES')
    assert_equal tickets([25, 100]), 'NO')
  end
end
