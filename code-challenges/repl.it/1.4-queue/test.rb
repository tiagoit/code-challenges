#!/usr/bin/env ruby

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative './solve'

class QueueTest < Minitest::Test
  def setup
    @queue = Queue.new
  end

  def test_empty
    assert_equal(-1, @queue.remove)
  end

  def test_add
    %w[A B C D E].each { |l| @queue.push(l) }
    assert_equal 'A B C D E', @queue.to_s
  end

  def test_remove
    %w[A B C D E].each { |l| @queue.push(l) }
    %w[A B C D E].each { |l| assert_equal l, @queue.remove, "removing: #{l}" }
    assert_equal '', @queue.to_s, 'should end as a empty queue'
  end

  def test_add_and_remove
    @queue.push('A')
    @queue.push('B')
    @queue.push('C')
    @queue.remove
    assert_equal 'B C', @queue.to_s
  end
end
