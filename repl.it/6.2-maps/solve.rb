#!/usr/bin/env ruby

def appears_most_times(array)
  map = {}
  array.each do |item|
    map[item] ? map[item] += 1 : map[item] = 1
  end
  p map
  map.max_by { |k, v| v }[0]
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

  # puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

# puts appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])
# => 4376