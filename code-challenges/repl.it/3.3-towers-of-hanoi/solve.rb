#!/usr/bin/env ruby

def move(starting, goal)
  aux = ([1,2,3] - [starting, goal])[0]
  moves = []
  moves.push "#{starting}->#{aux}"
  moves.push "#{starting}->#{goal}"
  moves.push "#{aux}->#{goal}"
  moves.join(' ')
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# # => 2->1 2->3 1->3

puts move(1, 2)
# # => 

puts move(2, 1)
# # => 
