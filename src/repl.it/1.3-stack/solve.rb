#!/usr/bin/env ruby
# https://repl.it/student/submissions/8849701

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def to_s
    @value.to_s
  end
end

# Linked list
class LinkedList
  attr_reader :length

  def initialize
    @length = 0
  end

  # add to the tail
  def add(item)
    new_node = Node.new(item)
    @length += 1

    if @head.nil?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def add_at(index, item)
    new_node = Node.new(item)
    @length += 1

    if index.zero?
      first = @head
      @head = new_node
      new_node.next_node = first
    else
      previous, current = get_node_at(index)

      # update tail
      @tail = new_node if current.nil? || @tail.eql?(current)

      # add node
      previous.next_node = new_node
      new_node.next_node = current
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

  def remove(index)
    return nil if index.negative? || @length.zero?

    previous, current = get_node_at(index)

    @length -= 1 if @length.positive?
    @head = @head.next_node if index.zero?
    @tail = previous if @tail.eql?(current)

    previous.next_node = current.next_node
  end

  def get_node_at(index)
    previous = @head # first node
    current = @head.next_node || @head # second node
    ci = 1

    # move to the cursor to the node at index or (last + 1) index
    while current && ci < index
      previous = current
      current = current.next_node
      ci += 1
    end

    [previous, current]
  end

  def to_s
    res = ''
    current = @head
    while current
      res += ' ' + current.to_s
      current = current.next_node
    end
    res.lstrip
  end
end

class Stack
  def initialize
    @list = LinkedList.new
  end

  def push(item)
    @list.add(item)
  end

  def pop
    item = @list.get(@list.length - 1)
    @list.remove(@list.length - 1)
    item
  end

  def to_s
    @list.to_s
  end
end
