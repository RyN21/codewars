gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/memoized_fibonacci'

class MemoizedFibonacciTest < Minitest::Test
  def test_it
    assert_equal 3, fibonacci(4)
    assert_equal 21, fibonacci(8)
    assert_equal 55, fibonacci(10)
    assert_equal 12586269025, fibonacci(50)
    assert_equal 1548008755920, fibonacci(60)
    assert_equal 190392490709135, fibonacci(70)
  end
end


# Problem Context
# The Fibonacci sequence is traditionally used to explain tree recursion.

# def fibonacci(n)
#   return n if (0..1).include? n
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# This algorithm serves well its educative purpose but it's tremendously inefficient,
# not only because of recursion, but because we invoke the fibonacci function
# twice, and the right branch of recursion (i.e. fibonacci(n-2)) recalculates
# all the Fibonacci numbers already calculated by the left branch (i.e. fibonacci(n-1)).

# This algorithm is so inefficient that the time to calculate any Fibonacci number
# over 50 is simply too much. You may go for a cup of coffee or go take a nap while
# you wait for the answer. But if you try it here in Code Wars you will most likely
# get a code timeout before any answers.

# For this particular Kata we want to implement the memoization solution. This will
# be cool because it will let us keep using the tree recursion algorithm while still
# keeping it sufficiently optimized to get an answer very rapidly.

# The trick of the memoized version is that we will keep a cache data
# structure (most likely an associative array) where we will store the Fibonacci
# numbers as we calculate them. When a Fibonacci number is calculated, we first
# look it up in the cache, if it's not there, we calculate it and put it in the
# cache, otherwise we returned the cached number.

# Refactor the function into a recursive Fibonacci function that using a memoized
# data structure avoids the deficiencies of tree recursion Can you make it so the
# memoization cache is private to this function?
