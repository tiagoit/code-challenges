#!/usr/bin/env ruby

require_relative './stack'

def balanced_brackets?(string)
  opening = ['(', '[', '{']
  closing = [')', ']', '}']
  stack = Stack.new

  string.split('').each do |c|
    if opening.include? c
      stack.push c if opening.include? c
    elsif closing.include? c
      return false if(closing.index(c) != opening.index(stack.pop))
    end
  end

  stack.pop.nil?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true