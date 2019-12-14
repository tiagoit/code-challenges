#!/usr/bin/env ruby

class Node
    attr_reader :data
    attr_accessor :left, :right

    def initialize(data)
        @data = data
    end
end

class BST
    def insert(node)
        return (@root = node) if @root.nil?
        current = @root
        loop do
            if node.data < current.data
                return (current.left = node) if current.left.nil?
                current = current.left
            else
                return (current.right = node) if current.right.nil?
                current = current.right
            end
        end
    end

    def pre_order(node = @root)
        return '' if node.nil?

        str = "#{node.data} "
        str += pre_order(node.left)
        str += pre_order(node.right)
    end
end


def binary_search_tree(array)
    tree = BST.new
    array.each { |e| tree.insert(Node.new(e)) }
    tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"