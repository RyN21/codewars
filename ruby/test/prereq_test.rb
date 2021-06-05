gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/prereq'

class PrereqTest < Minitest::Test
  def test_it
    prereq_1 = [
      ["class_4", "class_5"],
      ["class_2", "class_3"],
      ["class_5", "class_6"],
      ["class_1", "class_2"],
      ["class_3", "class_4"]
    ]

    prereq_2 = [
      ["class_1", "class_2"],
      ["class_2", "class_3"],
      ["class_4", "class_5"],
      ["class_3", "class_4"]
    ]

    prereq_3 = [
      ["class_1", "class_2"],
    ]

    assert_equal "class_3", prereq(prereq_1)
    assert_equal "class_3", prereq(prereq_2)
    assert_equal "class_1", prereq(prereq_3)
  end
end
