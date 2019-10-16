# frozen_string_literal: true

MAX_N = 10.pow(5)
MAX_ITEM = 10.pow(7)

# O(n^2) ???? wrong
def birthday_cake_candles ar
  ar.count ar.max
end

# O(n)
def birthday_cake_candles_slower ar
  max = 0
  count = 0
  ar.each do |item|
    if item > max
      max = item
      count = 1
    elsif item.eql? max
      count += 1
    end
  end
  count
end

# O(n log n)

def solve
  res = stress
  total1 = res[0]
  total2 = res[1]
  puts total1.to_s + '    ' + total2.to_s
  # puts birthday_cake_candles [3, 2, 1, 3]
end

# Constraints
# 1 <= n <= 10^5     | 1 - 100,000
# 1 <= ar[i] <= 10^7 | 1 - 10,000,000
def stress
  total1 = 0
  total2 = 0
  
  begin
    loop do
      
      n = rand(1..MAX_N)
      array = []
      n.times { array.push rand(1..MAX_ITEM) }

      start1 = Time.now
      r1 = birthday_cake_candles array
      finish1 = Time.now

      start2 = Time.now
      r2 = birthday_cake_candles_slower array
      finish2 = Time.now

      diff1 = finish1 - start1
      diff2 = finish2 - start2

      total1 += diff1
      total2 += diff2

      # puts diff1
      # puts diff2

      puts "ERROR: #{r1} #{r2} #{array}" unless r1.eql? r2
    end
  rescue Interrupt
    [total1, total2]
  end
end
