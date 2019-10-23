#!/usr/bin/env ruby

require 'minitest/autorun'
# require 'minitest/spec'
require 'minitest/reporters'

require_relative './solve'

Minitest::Reporters.use!

# describe LinkedList do
#   describe "#add" do
#     it "should add an item on an empty list"

#     end

#     it ""

#     end
#   end
# end

class Test < Minitest::Test
  def setup
    @list = LinkedList.new
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

  # add_at
  def test_add_at_head
    %w[A B C D E].each { |l| @list.add(l) }
    @list.add_at(0, 'K')
    assert_equal 'K A B C D E', @list.to_s
  end

  def test_add_at_second_index
    %w[A B C D E].each { |l| @list.add(l) }
    @list.add_at(1, 'K')
    assert_equal 'A K B C D E', @list.to_s
  end

  def test_add_at_tail
    %w[A B C D E].each { |l| @list.add(l) }
    @list.add_at(5, 'K')
    assert_equal 'A B C D E K', @list.to_s
  end

  def test_add_at_tail_should_update_tail_pointer
    %w[A B C D E].each { |l| @list.add(l) }
    @list.add_at(5, 'K')
    @list.add('X')
    assert_equal 'A B C D E K X', @list.to_s
  end

  def test_add_at_middle
    %w[A B C D E].each { |l| @list.add(l) }
    @list.add_at(3, 'K')
    assert_equal 'K', @list.get(3)
    assert_equal 'C', @list.get(2)
    assert_equal 'D', @list.get(4)
  end

  def test_add_on_empty_list
    @list.add_at(0, 'K')
    assert_equal 'K', @list.get(0)
  end

  def test_add_no_sequential_index
    %w[A B C D E].each { |l| @list.add(l) }
    @list.add_at(100, 'K')
    assert_equal 'A B C D E K', @list.to_s
  end

  # remove
  def test_remove_head
    %w[A B C D E].each { |l| @list.add(l) }
    @list.remove(0)
    assert_equal 'B C D E', @list.to_s
  end

  def test_remove_second
    %w[A B C D E].each { |l| @list.add(l) }
    @list.remove(1)
    assert_equal 'A C D E', @list.to_s
  end

  def test_remove_tail
    %w[A B C D E].each { |l| @list.add(l) }
    @list.remove(4)
    assert_equal 'A B C D', @list.to_s
  end

  def test_remove_middle
    %w[A B C D E].each { |l| @list.add(l) }
    @list.remove(2)
    assert_equal 'A B D E', @list.to_s
  end

  # to_s
  def test_to_s
    %w[A B C D E].each { |l| @list.add(l) }
    assert_equal 'A B C D E', @list.to_s
  end
end
