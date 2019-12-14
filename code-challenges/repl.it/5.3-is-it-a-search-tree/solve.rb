#!/usr/bin/env ruby
class Node
	attr_reader :data
	attr_accessor :left, :right

	def initialize data
		@data = data
	end
end

def array_to_tree(array, index = 0)
  return unless index < array.length
  return if array[index].eql?(0)

  root = Node.new(array[index])
  root.left = array_to_tree(array, 2*index+1) if 2*index+1 < array.length
  root.right = array_to_tree(array, 2*index+2) if 2*index+2 < array.length
  root
end

def check_proper_tree(node)
    return true if node.nil?

    unless node.left.nil?
        stree_arr = all_childrens(node.left)
        return false if stree_arr.any? { |d| d > node.data }
    end

    unless node.right.nil?
        stree_arr = all_childrens(node.right)
        return false if stree_arr.any? { |d| d < node.data }
    end

    return check_proper_tree(node.left) && check_proper_tree(node.right)
end

def all_childrens(node)
    return if node.nil?

    arr = [node.data]
    arr.concat(all_childrens(node.left)) unless node.left.nil?
    arr.concat(all_childrens(node.right)) unless node.right.nil?
    arr
end

def search_tree?(array)
	root = array_to_tree(array)
    check_proper_tree(root)
    # print all_childrens(root)
end

puts search_tree?([10, 4, 12]) # => true
puts search_tree?([10, 5, 7]) # => false
puts search_tree?([20, 10, 27, 12, 14, 23, 30]) # => false
puts search_tree?([19, 9, 26, 4, 13, 17, 29]) # => false
puts search_tree?([21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0]) # => true
