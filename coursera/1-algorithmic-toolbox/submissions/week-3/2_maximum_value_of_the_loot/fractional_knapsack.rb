#!/usr/bin/env ruby
# frozen_string_literal: true

def get_optimal_value(capacity, weights, values)
  value = 0.0
  prices_per_unit = []

  # Calculate the prices_per_unit
  weights.length.times do |i|
    prices_per_unit.push(1.0 * values[i] / weights[i])
  end

  while capacity.positive?
    max_idx = prices_per_unit.index(prices_per_unit.max)
    break if prices_per_unit[max_idx].negative?

    if weights[max_idx] <= capacity
      value += values[max_idx]
      capacity -= weights[max_idx]
    else
      amount_of_this_item = capacity > weights[max_idx] ? weights[max_idx] : capacity
      value += (prices_per_unit[max_idx] * amount_of_this_item)
      capacity = 0
    end

    prices_per_unit[max_idx] = -1
  end

  value
end

if $PROGRAM_NAME == __FILE__
  data = STDIN.read.split.map(&:to_i)
  n, capacity = data[0, 2]
  values = data.values_at(*(2..2 * n).step(2))
  weights = data.values_at(*(3..2 * n + 1).step(2))

  answer = get_optimal_value(capacity, weights, values)
  puts('%.4f' % answer).to_s
end
