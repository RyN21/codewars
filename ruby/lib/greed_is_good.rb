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
      3.times { c[1].shift }
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


# BEST PRACTICE
#=======================================================================================

SCORE_MAP = {
  1 => [0, 100, 200, 1000, 1100, 1200, 2000],
  2 => [0, 0, 0, 200, 200, 200, 400],
  3 => [0, 0, 0, 300, 300, 300, 600],
  4 => [0, 0, 0, 400, 400, 400, 800],
  5 => [0, 50, 100, 500, 550, 600, 1000],
  6 => [0, 0, 0, 600, 600, 600, 1200]
}

def score( dice )
  (1..6).inject(0) do |score, die|
    score += SCORE_MAP[die][dice.count(die)]
  end
end


# CLEVER
#=======================================================================================

def score(dice)
  dice.sort.join.gsub(/(\d)\1\1|(1|5)/).inject(0) do |sum, num|
    sum + ($1.to_i * 100 + $2.to_i * 10 ) * (num[0] == '1' ? 10 : 1)
  end
end


# ALTERNATIVE
#=======================================================================================

def score( dice )
  [ dice.count(1) / 3 * 1000,
    dice.count(6) / 3 * 600,
    dice.count(5) / 3 * 500,
    dice.count(4) / 3 * 400,
    dice.count(3) / 3 * 300,
    dice.count(2) / 3 * 200,
    dice.count(1) % 3 * 100,
    dice.count(5) % 3 * 50 ].reduce(:+)
end
