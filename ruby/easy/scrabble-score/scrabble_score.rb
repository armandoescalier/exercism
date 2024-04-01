# frozen_string_literal: true

LETTERS_VALUES = {
  'a' => 1,
  'e' => 1,
  'i' => 1,
  'o' => 1,
  'u' => 1,
  'l' => 1,
  'n' => 1,
  'r' => 1,
  's' => 1,
  't' => 1,
  'd' => 2,
  'g' => 2,
  'b' => 3,
  'c' => 3,
  'm' => 3,
  'p' => 3,
  'f' => 4,
  'h' => 4,
  'v' => 4,
  'w' => 4,
  'y' => 4,
  'k' => 5,
  'j' => 8,
  'x' => 8,
  'q' => 10,
  'z' => 10
}.freeze

class Scrabble
  def initialize(input)
    @word = input.to_s.downcase.scan(/\w/)
  end

  def self.score(input)
    Scrabble.new(input).score
  end

  def score
    scrabble_score = 0

    if @word.empty? || @word.nil?
      scrabble_score
    else
      @word.each do |char|
        scrabble_score += LETTERS_VALUES[char]
      end
    end
    scrabble_score
  end
end
