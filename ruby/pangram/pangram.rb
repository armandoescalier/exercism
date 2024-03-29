# frozen_string_literal: true

# Pangram challenge
class Pangram
  def self.pangram?(sentence)
    ('a'..'z').all? { |char| sentence.downcase.include?(char) }
  end
end
