require 'pry'

# MY SOLUTION
#=======================================================================================

def score(dice)
  scr = 0
  points = {'3x1s' => 1000, '3x6s' => 600, '3x5s' => 500, '3x4s' => 400, '3x3s' => 300, '3x2s' => 200, '1x1' => 100, '1x5' => 50}
  chunks = dice.sort.chunk { |e| e }.select{ |e, chunk| chunk.size > 0 }

  chunks.each do |c|
    if c[1].count >= 3
      scr += points["3x#{c[0]}s"]
      3.times do c[1].shift end
    end

    if c[0] == 5 || c[0] == 1
      until c[1].empty?
        scr += points["1x#{c[0]}"]
        c[1].shift
      end
    end
  end
  scr
end


# BEST PRACTICE  &&  CLEVER
#=======================================================================================




# ALTERNATIVE
#=======================================================================================




# ALTERNATIVE
#=======================================================================================
