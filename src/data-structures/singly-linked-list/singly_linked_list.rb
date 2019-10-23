#!/usr/bin/env ruby

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def push_back(key)
    new_node = Node.new(key)

    if @head.nil?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def get_by_index(index)
    current = @head
    index.times do
      return nil unless current.next_node

      current = current.next_node
    end

    current&.value # current && current.value
  end
end

# list = LinkedList.new

# list.push_back(3)
# list.push_back(5)
# puts list.get(1)
# puts list.get(2).nil?

# TODO
# push_front(key)
# top_front
# pop_front
# push_back(key)
# top_back
# find?(key)
# erase(key)
# empty?
# add_before(node, key)
# add_after(node, key)