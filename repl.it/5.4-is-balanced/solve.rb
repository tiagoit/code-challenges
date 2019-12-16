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
  root.left = array_to_tree(array, 2*index+1)
  root.right = array_to_tree(array, 2*index+2)
  root
end

def height(tree, min_max)
	return 0 if tree.nil?

  [height(tree.left, min_max), height(tree.right, min_max)].send(min_max) + 1
end

def balanced_tree?(array)
    root = array_to_tree(array)
    balanced?(root)
end

def balanced?(tree)
    return true if tree.nil? || (tree.left.nil? && tree.right.nil?)

    return false if (height(tree.left, :min) - height(tree.right, :max)).abs() > 1 ||
                    (height(tree.left, :max) - height(tree.right, :min)).abs() > 1

    true
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

puts balanced_tree?([1, 2, 3, 4, 0, 0, 5, 6, 0, 0, 0, 0, 0, 0, 7])
# => false
