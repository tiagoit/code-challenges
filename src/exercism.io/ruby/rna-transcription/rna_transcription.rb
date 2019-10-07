# frozen_string_literal: true

# RnaTranscription
class Complement
  MAP = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  }.freeze

  def self.valid(char)
    %w[G C T A].include?(char)
  end

  def self.of_dna(sequence)
    res = sequence.chars.map { |c| MAP[c.to_sym] if valid c }
    res.join() || ''
  end
end

puts Complement.of_dna('C')
