#!/usr/bin/env ruby

require_relative '../list'

class Stack
  def initialize
    @list = List.new
  end

  def push(number)
    @list.add(0, number)
  end

  def pop
    item = @list.get 0
    @list.remove 0
    item
  end

  def min
    min = @list.get 0
    @list.each { |item| min = item if item < min }
    min
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3