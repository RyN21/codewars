gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../../lib/4kyu/nesting_structure_comp'

class NestingStructureCompTest < Minitest::Test
  def test_it
    assert_equal "[1,[1,1]] same as [2,[2,2]]", [1,[1,1]].same_structure_as([2,[2,2]])
    assert_equal "[1,1,1] same as [2,2,2]", [1, 1, 1].same_structure_as([ 2, 2, 2 ])
    assert_equal "[[[],[]]] same as [[[],[]]]", [[[],[]]].same_structure_as([[[],[]]])
    assert_equal "[1,[1,1]] not same as [[2,2],2]", [1, [1, 1]].same_structure_as([[2, 2], 2])
    assert_equal "[1,[1,1]] not same as [[2],2]", [1, [1, 1]].same_structure_as([[2], 2])
  end
end

# Complete the function/method (depending on the language) to return true/True when
# its argument is an array that has the same nesting structures and same corresponding
# length of nested arrays as the first array.

# For example:

# should return false
# [ 1, [ 1, 1 ] ].same_structure_as( [ [ 2 ], 2 ] )

# should return true
# [ [ [ ], [ ] ] ].same_structure_as( [ [ [ ], [ ] ] ] );

# should return false
# [ [ [ ], [ ] ] ].same_structure_as( [ [ 1, 1 ] ] )
