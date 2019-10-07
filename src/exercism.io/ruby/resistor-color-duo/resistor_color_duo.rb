# frozen_string_literal: true

# ResistorColorDuo
class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    res = String.new
    2.times { |i| res << COLORS.index(colors[i]).to_s }
    res.to_i
  end
end
