#!/usr/bin/env ruby

def move_2_from_origin_to_aux
  puts ['1->2', '1->3', '2->3'] # green
end

def move_3_from_origin_to_goal
  puts ['1->3', '1->2', '3->2', '1->3', '2->1', '2->3', '1->3'] # blue
end

def swap_origin_n_goal
  puts ['1->2', '3->1', '3->2', '1->2', '1->3', '2->3', '2->1', '3->1', '2->3'] # red
end

def hanoi(disks)
  return puts '1->3' if disks.eql?(1)
  return move_2_from_origin_to_aux if disks.eql?(2)

  if disks.even?
    ((disks - 2) / 2).times do
      move_2_from_origin_to_aux
      swap_origin_n_goal
    end
    move_2_from_origin_to_aux
  else

  end

end

hanoi(6)
