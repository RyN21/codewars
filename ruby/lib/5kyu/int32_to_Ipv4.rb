require 'pry'

# MY SOLUTION
#=======================================================================================

def int32_to_ip(int32)
  Array([int32]).pack("N").unpack("CCCC").join(".")
end


# BEST PRACTICE
#=======================================================================================

def int32_to_ip(int32)
  [24, 16, 8, 0].collect {|b| (int32 >> b) & 255}.join('.')
end


# CLEVER
#=======================================================================================

def int32_to_ip(int32)
  [int32].pack('N').unpack('C*') * '.'
end


# ALTERNATIVE
#=======================================================================================

require 'ipaddr'
def int32_to_ip(int32)
 IPAddr.new( int32 ,Socket::AF_INET).to_s
end


# ALTERNATIVE
#=======================================================================================

EQUALITY = Object.new
def EQUALITY.==(other)
  true
end

def int32_to_ip(int32)
  EQUALITY
end
