require 'pry'

# MY SOLUTION
#=======================================================================================

def format_duration(seconds)
  m, s = seconds.divmod(60)
  h, m = m.divmod(60)
  d, h = h.divmod(24)
  y, d = d.divmod(365)

  time = [['year', y], ['day', d], ['hour', h], ['minute', m], ['second', s]]
  time.delete_if { |k,v| v == 0 }
  string = ""
  return 'now' if time == []
  stl = time.index([time.last[0], time.last[1]]) - 1 if time.count > 2

  time.each do |e|
    e[0] = e[0] + 's' if e[1] > 1
    if time.count == 1
      string.concat(e[1].to_s, 32, e[0])
    elsif time.count == 2 && e[0] == time[0][0]
      string.concat(e[1].to_s, 32, e[0], ' and ')
    elsif time.count == 2 && e[0] == time[1][0]
      string.concat(e[1].to_s, 32, e[0])
    elsif time.count > 2 && e[0] != time.last[0] && e[0] != time[stl][0]
      string.concat(e[1].to_s, 32, e[0] + ', ')
    elsif time.count > 2 && e[0] == time[stl][0]
      string.concat(e[1].to_s, 32, e[0] + ' and ')
    elsif time.count > 2 && e[0] == time.last[0]
      string.concat(e[1].to_s, 32, e[0])
    end
  end

  string
end


# BEST PRACTICE
#=======================================================================================

def format_duration(total)
  if total == 0
    "now"
  else
    duration = {
      year:   total / (60 * 60 * 24 * 365),
      day:    total / (60 * 60 * 24) % 365,
      hour:   total / (60 * 60) % 24,
      minute: total / 60 % 60,
      second: total % 60
    }

    @output = []

    duration.each do |key, value|
      if value > 0
        @output << "#{value} #{key}"
        @output.last << "s" if value != 1
      end
    end

    @output.join(', ').gsub(/\,\s(?=\d+\s\w+$)/, " and ")
  end
end


# CLEVER
#=======================================================================================

def format_duration(seconds)
  *init, last = [3600 * 24 * 365, 3600 * 24, 3600, 60, 1]
                .collect {|x| div, seconds = seconds.divmod(x); div}
                .reverse
                .zip([" second", " minute", " hour", " day", " year"])
                .keep_if {|x, y| x != 0}
                .map{|x, y| x.to_s + y + (x > 1 ? "s" : "")}
                .reverse
  last ? "#{init.join(", ")}#{init == [] ? "" : " and "}#{last}" : "now"
end


# ALTERNATIVE
#=======================================================================================

def format_duration(seconds)
  return "now" if seconds == 0
  m,s = seconds.divmod(60)
  h,m = m.divmod(60)
  d,h = h.divmod(24)
  y,d = d.divmod(365)

  *f,l = {'year'=>y,'day'=>d,'hour'=>h,'minute'=>m,'second'=>s}.to_a.select{|i| i.last > 0}.map{|i| (i.last>1)? "#{i.last} #{i.first+'s'}": "#{i.last} #{i.first}"}
  (f.count > 0)? f.join(', ') + ' and '+l : l
end


# ALTERNATIVE
#=======================================================================================

def format_duration(seconds)
  phrase = [['year', 31536000], ['day', 86400], ['hour', 3600], ['minute', 60], ['second', 1]]
  phrase.map! do |lable, unit_seconds|
    unit = seconds / unit_seconds
    seconds -= unit * unit_seconds
    ["1 #{lable}", "#{unit} #{lable}s", nil][unit <=> 1]
  end.compact!
  [phrase.join, phrase[0..-2].join(', ') + " and #{phrase[-1]}", 'now'][phrase.count <=> 1]
end

# ALTERNATIVE
#=======================================================================================

def format_duration(t)
  s = " %i years, %i days, %i hours, %i minutes, %i seconds,"
  s %= [t/31536000,t/86400%365,t/3600%24,t/60%60,t%60]
  s.gsub!(/ 0 \w+,/, '') # remove zero components
  s.gsub!(/ 1 (\w+)s,/, ' 1 \1,') # fix singular
  s.gsub!(/, (\d+ \w+),$/, ' and \1,') # insert 'and'
  s=='' ? 'now' : s[1...-1] # remove leading ' ' and trailing ','
end


# ALTERNATIVE
#=======================================================================================

def format_duration(seconds)
  return 'now' unless seconds > 0
  *init, last = [31536000, 86400, 3600, 60, 1]
                .collect {|x| units, seconds = seconds.divmod(x); units}
                .zip([" year", " day", " hour", " minute", " second"])
                .keep_if {|x, y| x != 0}
                .map{|x, y| x.to_s + y + (x > 1 ? "s" : "")}

  init.size == 0 ? last : "#{init.join(", ")} and #{last}"
end


# ALTERNATIVE
#=======================================================================================

YEAR = 31536000
DAY = 86400
HOUR = 3600
MINUTE = 60

def format_duration(seconds)
  return "now" if seconds.zero?

  time = {}
  time[:year], seconds = seconds.divmod YEAR
  time[:day], seconds = seconds.divmod DAY
  time[:hour], seconds = seconds.divmod HOUR
  time[:minute], seconds = seconds.divmod MINUTE
  time[:second] = seconds
  time.reject! { |k,v| v.zero? }

  time.inject([]) do |out, (k, v)|
    out.push "#{v} #{k}" + ("s" if v > 1).to_s
  end.join(', ').sub(/,([^,]+)$/, ' and\1')
end


# PSEUDO CODE
#=======================================================================================

# This kata, I will have to write a functions that takes in an amount of seconds
# and then converts it to a human friendly way to read it
#
# Example (5) will convert to "5 seconds"
# I am taking in an integer and returning a string
#
# -the first step will be converting the number of seconds to years:days:hours:minutes:seconds
# -then we can take the new conversion and interpolate it into a string
#   -may contain if statements
# -consider modulo
#
# other things to note
# -must be a non-negative integer
# -if 0 then return 'now'
# -will need to pluraize second, minute, etc. if > 1
#
# def format_duration(s)
#
# end
