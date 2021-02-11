require 'pry'


# MY SOLUTION
#=======================================================================================

def tickets(people)
  drawer = {'25' => 0, '50' => 0, '100' => 0}
  while people.count > 0
    if people[0] == 25
      drawer['25'] += 1
      people.shift
      return "YES" if people.count == 0
    elsif people[0] == 50 && drawer['25'] >= 1
      drawer['25'] -= 1
      drawer['50'] += 1
      people.shift
      return "YES" if people.count == 0
    elsif people[0] == 100 && drawer['25'] >= 3 && drawer['50'] == 0
      drawer['25'] -= 3
      people.shift
      return "YES" if people.count == 0
    elsif people[0] == 100 && drawer['25'] >= 1 && drawer['50'] >= 1
      drawer['25'] -= 2
      drawer['50'] -= 1
      drawer['100'] += 1
      people.shift
      return "YES" if people.count == 0
    else
      return "NO"
    end
  end
end


# BEST PRACTICE
#=======================================================================================

def tickets(people)
  bills_25, bills_50 = 0, 0

  people.each { |v|
    if v == 25
      bills_25 += 1        # keep the 25

    elsif v == 50 and bills_25 > 0
      bills_50 += 1        # keep the 50
      bills_25 -= 1        # return 25

    elsif v == 100 and (bills_25 >= 3 or (bills_50 > 0 and bills_25 > 0))
      if bills_50 > 0
        bills_50 -= 1    # return 50
        bills_25 -= 1    # return 25
      else
        bills_25 -= 3    # return 3x25
      end

    else
      return "NO"
    end
  }

  "YES"
end



# CLEVER
#=======================================================================================

ADJ = {25=>[[1, 0, 0], [0, 0, 0]], 50=>[[-1, 1, 0], [-1, 0, 0]], 100=>[[-1, -1, 1], [-2, 1, 0]]}
def adjusted(adj); ($bills = ($bills.zip(adj)).map{|x| x.sum}).none?(&:negative?); end
def tickets(people)
  $bills = [0, 0, 0]
  people.each {|p| return 'NO' if not adjusted(ADJ[p][0]) and not adjusted(ADJ[p][1])}
  return 'YES'
end
