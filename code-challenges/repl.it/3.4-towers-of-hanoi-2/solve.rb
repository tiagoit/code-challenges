#!/usr/bin/env ruby
# https://repl.it/student/submissions/9291304

def hanoi(disks, source, dest, aux)
  return puts "#{source}->#{dest}" if disks.eql?(1)

  hanoi(disks - 1, source, aux, dest)
  puts "#{source}->#{dest}"
  hanoi(disks - 1, aux, dest, source)
end

def hanoi_steps(disks)
  source, aux, dest = 1, 2, 3
  hanoi(disks, source, dest, aux)
end

hanoi_steps(3)

# hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

# hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

# hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3
