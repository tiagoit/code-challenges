#!/usr/bin/env ruby
# https://repl.it/student/submissions/8849701

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def add(number)
    new_node = Node.new(number)

    if @head.nil?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def get(index)
    current = @head
    index.times do
      return nil unless current.next_node

      current = current.next_node
    end

    current&.value # current && current.value
  end
end

# list = LinkedList.new

# list.add(3)
# list.add(5)
# puts list.get(1)
# puts list.get(2).nil?
