gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/prereq'

class PrereqTest < Minitest::Test
  prereq_1 = []

  def test_it
    assert_equal "", prereq(prereq_1)
  end
end
