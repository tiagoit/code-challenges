#!/usr/bin/env ruby

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

class List
  def add_tail(item)
    new_node = Node.new(item)

    if empty?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def add(index, item)
    new_node = Node.new(item)

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

  def get_tail
    @tail.value
  end

  def get(index)
    current = @head
    index.times do
      return nil unless current.next_node

      current = current.next_node
    end

    current&.value # current && current.value
  end

  def remove_tail
    # empty list
    return -1 if empty?

    # only one element
    if @tail.eql? @head
      @head = @tail = nil
    else
      # update tail
      before_tail_node = @head
      while before_tail_node.next_node != @tail
        before_tail_node = before_tail_node.next_node
      end
      @tail = before_tail_node
    end
  end

  def remove(index)
    # empty list
    return -1 if empty? || index.negative? || index.class != Integer

    # only one element
    if @tail.eql? @head
      return -1 unless index.zero?

      @head = @tail = nil
    elsif index.zero?
      @head = @head.next_node
    else
      previous, current = get_node_at(index)

      @head = @head.next_node if index.zero?
      @tail = previous if @tail.eql?(current)

      previous.next_node = current.next_node
    end
  end

  def get_node_at(index)
    previous = @head # first node
    current = @head.next_node || @head # second node
    ci = 1

    # move to the cursor to the node at index or last node
    while current && ci < index
      previous = current
      current = current.next_node
      ci += 1
    end

    return [previous, current] if ci.eql? index

    [nil, nil]
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

  def empty?
    @head.nil?
  end
end

# list = List.new

# %w[A B C D E].each { |item| list.add_tail(item) }
# puts list.to_s
# puts list.get 0
# list.remove 0
# puts list.to_s

# puts list.get 0
# list.remove 0
# puts list.to_s

# puts list.get 0
# list.remove 0
# puts list.to_s

# puts list.get 0
# list.remove 0
# puts list.to_s

# puts list.get 0
# list.remove 0
# puts list.to_s

# puts list.get 0
# puts list.remove 0
# puts list.to_s
