#!/usr/bin/env ruby
# frozen_string_literal: true

def car_fueling(distance, capacity, stops)
  stops_used = 0
  last_stop = 0
  stops.each_with_index do |stop, i|
    return -1 if stop - last_stop > capacity

    # if the next stop is greater than the tank capacity => have to stop
    next_stop = stops[i + 1] || distance
    if next_stop - last_stop > capacity
      stops_used += 1
      last_stop = stop
    end
  end
  return -1 if distance - last_stop > capacity

  stops_used
end

if $PROGRAM_NAME == __FILE__
  data = STDIN.read.split.map(&:to_i)
  distance = data[0]
  capacity = data[1]
  stops_count = data[2]
  stops = []
  stops_count.times do |i|
    stops.push data[3 + i]
  end

  answer = car_fueling(distance, capacity, stops)
  puts answer
end
