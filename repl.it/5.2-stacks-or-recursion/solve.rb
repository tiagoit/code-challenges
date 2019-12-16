#!/usr/bin/env ruby

def tree_height(tree_as_list)
  stack = [0]
  heigth = 1
  while !stack.empty? do
    root = stack.pop
    left = root * 2 + 1
    right = left + 1
    stack.push(left) if left < tree_as_list.length-1
    stack.push(right) if right < tree_as_list.length-1

    # its a leaf
    if left > tree_as_list.length-1 && right > tree_as_list.length-1
      path_height = 1      
      # measure distance to root
      loop do
        root = (root-1)/2
        path_height += 1
        break if root == 0
      end
      heigth = path_height if path_height > heigth
    end
  end
  heigth
end

puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4