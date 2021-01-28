require 'pry'

def tickets(people)
  drawer = 0
  people.each do |p|
    if p = 25
      drawer += p
    elsif p == 50 && drawer >= 25
      binding.pry
      drawer += p
      drawer -= 25

    end
  end
end
