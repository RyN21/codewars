gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/simple_pig_latin'

class PigItTest < Minitest::Test
  def test_it_adds_binary
    assert_equal pig_it('This is my string?'), 'hisTay siay ymay tringsay ?'
    assert_equal pig_it('Pig latin is cool'), 'igPay atinlay siay oolcay'
    assert_equal pig_it('This is my string'), 'hisTay siay ymay tringsay'
  end
end

# Move the first letter of each word to the end of it, then add "ay" to the end of the word.
# Leave punctuation marks untouched.
