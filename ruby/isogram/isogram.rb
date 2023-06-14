# frozen_string_literal: true

# Isogram challenge
class Isogram
  def self.isogram?(original_word)
    only_letters = original_word.downcase.scan(/\w/)
    unique_chars = only_letters.uniq

    only_letters.length == unique_chars.length
  end
end
