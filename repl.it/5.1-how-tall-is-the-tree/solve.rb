#!/usr/bin/env ruby
class Node
	attr_reader :data
  attr_accessor :left, :right
  
  def initialize data
    @data = data
  end
end

def array_to_tree(array, index = 0)
    return if index >= array.length || array[index].eql?(0)

    root = Node.new(array[index])
    root.left = array_to_tree(array, 2*index+1) if 2*index+1 < array.length
    root.right = array_to_tree(array, 2*index+2) if 2*index+2 < array.length
    root
end

def height(tree)
  return 0 if tree.nil?

  [height(tree.left), height(tree.right)].max + 1
end

def binary_tree_height(array_tree)
  tree = array_to_tree(array_tree)
  height(tree)
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts binary_tree_height([1, 2, 3, 4, 0, 5, 6, 7, 8, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0])
# => 5
puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3


# def binary_tree_height(array_tree)
#     level = 0
#     level += 1 while 2**level < array_tree.length
#     level
# end

# puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
  # => 3

# return 0 if tree.nil?
#   return 1 if (tree.right && tree.left.nil?) || (tree.left && tree.right.nil?)
  
#   [height(tree.left), height(tree.right)].max + 1
