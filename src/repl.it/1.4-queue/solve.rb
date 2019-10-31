#!/usr/bin/env ruby

require_relative '../list'

class Queue
  def initialize
    @list = List.new
  end

  def add(item)
    @list.add_tail(item)
  end

  def remove
    item = @list.get(0)
    @list.remove(0)
    item || -1
  end

  def to_s
    @list.to_s
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1