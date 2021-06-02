gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/prime_streaming'

class PrimeStreamingTest < Minitest::Test
  def test_it
    assert_equal ['ab', 'ba'], permutations('ab').sort
    assert_equal ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa'], permutations('aabb').sort
  end
end


def verify(from_n, *vals)
  stream = Primes.stream

  (0...from_n).each do | _ |
    stream.next
  end

  for v in vals
    Test.assert_equals(stream.next, v)
  end
end

describe "Sample tests" do
  verify(0,2,3,5,7,11,13,17,19,23,29)
  verify(10,31,37,41,43,47,53,59,61,67,71)
  verify(100,547,557,563,569,571,577,587,593,599,601)
  verify(1000,7927,7933,7937,7949,7951,7963,7993,8009,8011,8017)
end
