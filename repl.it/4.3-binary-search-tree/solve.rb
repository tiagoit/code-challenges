#!/usr/bin/env ruby

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  # def insert(node, subtree = @root)
  #   return @root = node if @root.nil?

  #   if node.data > subtree.data
  #     subtree.right.nil? ? subtree.right = node : insert(node, subtree.right)
  #   else
  #     subtree.left.nil? ? subtree.left = node : insert(node, subtree.left)
  #   end
  # end

  def insert(node)
    return @root = node if @root.nil?

    current = @root
    while !current.nil? do
        if node.data < current.data
          if current.left.nil?
            current.left = node
            break
          end
          current = current.left
        else
          if current.right.nil?
            current.right = node
            break
          end
          current = current.right
        end
    end
  end

  def pre_order(node = @root)
    return if node.nil?
    
    print node.data.to_s + ' '
    pre_order(node.left)
    pre_order(node.right)
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"

binary_search_tree([5, 3, 7, 1, 2, 6, 8])

binary_search_tree([10, 12, 15, 7, 2, 23, 9, 14, 21])

binary_search_tree([50, 25, 75, 15, 21, 62, 91])