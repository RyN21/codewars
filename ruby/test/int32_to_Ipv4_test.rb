gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/int32_to_Ipv4'

class Int32ToIpv4Test < Minitest::Test
  def test_it
    assert_equal "128.114.17.104", int32_to_ip(2154959208)
    assert_equal "0.0.0.0", int32_to_ip(0)
    assert_equal "128.32.10.1", int32_to_ip(2149583361)
  end
end
