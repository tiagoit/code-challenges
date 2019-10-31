#!/usr/bin/env ruby

require 'minitest/autorun'
require "minitest/reporters"
require_relative './solve'

Minitest::Reporters.use!

class Test < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def teardown
    @list = LinkedList.new # destroy the list
  end

  def test_empty
    assert_nil @list.get(0)
  end

  def test_add_get
    @list.add('A')
    assert_equal 'A', @list.get(0)
  end

  def test_add_get_many
    %w[A B C D E].each { |l| @list.add(l) }
    assert_equal 'E', @list.get(4)
  end

  def test_add_get_not_found_index
    %w[A B C D E].each { |l| @list.add(l) }
    assert_nil @list.get(5)
    assert_nil @list.get(7)
    assert_nil @list.get(10**1_000)
  end
end
