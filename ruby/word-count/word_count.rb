# frozen_string_literal: true

class Phrase
  def initialize(original_sentence)
    @original_sentence = original_sentence
  end

  def word_count
    sanitized_phrase = @original_sentence.downcase.gsub(/[^0-9 a-z']/, ' ').gsub(/\s'|'\s/, ' ').split
    sanitized_phrase.tally
  end
end
