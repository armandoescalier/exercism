# frozen_string_literal: true

class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length

    first_strand = strand_one.chars
    second_strand = strand_two.chars
    hamming_distance = 0

    first_strand.each_index do |character|
      hamming_distance += 1 if first_strand[character] != second_strand[character]
    end
    hamming_distance
  end
end
