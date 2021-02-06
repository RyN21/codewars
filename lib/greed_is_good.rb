require 'pry'

# MY SOLUTION
#=======================================================================================

def score(dice)
  scr = 0
  points = {'3x1s' => 1000, '3x6s' => 600, '3x5s' => 500, '3x4s' => 400, '3x3s' => 300, '3x2s' => 200, '1x1' => 100, '1x5' => 50}
  grouped = dice.sort.chunk do |e|
    e
  end.select{ |e, chunk| chunk.size > 0 }

  grouped.each do |g|
    scr += points["3x#{g[0]}s"] if g[1].count >= 3
    3.times {g[1].shift} if g[1].count >= 3
    scr += points["3x#{g[0]}s"] if g[1].count == 3
    3.times {g[1].shift} if g[1].count >= 3
    if g[0] == 5 || g[0] == 1
      until g[1].empty?
        scr += points["1x#{g[0]}"]
        g[1].shift
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
