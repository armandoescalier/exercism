# frozen_string_literal: true

class PigLatin
  def self.translate(word)
    @word = word
    rules
  end

  def self.rules
    if starts_with_vowel_or_special?
      rule1
    elsif starts_with_consonant_and_contains_qu?
      rule3
    elsif starts_with_consonant_and_contains_y?
      rule4
    else
      rule2
    end
  end

  def self.starts_with_vowel_or_special?
    vowels = %w[a e i o u]
    special_prefixes = %w[xr yt]
    vowels.any? { |v| @word.start_with?(v) } || special_prefixes.any? { |r| @word.start_with?(r) }
  end

  def self.starts_with_consonant_and_contains_qu?
    !starts_with_vowel? && @word.include?('qu')
  end

  def self.starts_with_consonant_and_contains_y?
    !starts_with_vowel? && @word.include?('y')
  end

  def self.starts_with_vowel?
    %w[a e i o u].any? { |v| @word.start_with?(v) }
  end

  # Rules
  def self.rule1
    @word = "#{@word}ay"
  end

  def self.rule2
    vowels = %w[a e i o u]

    index_of_first_vowel = @word.chars.index { |char| vowels.include?(char) }
    consonant_cluster = @word[0...index_of_first_vowel]
    rest_of_word = @word[index_of_first_vowel..]

    @word = "#{rest_of_word}#{consonant_cluster}ay"
  end

  def self.rule3
    array = @word.split('qu')
    @word = "#{array[1]}#{array[0]}quay"
  end

  def self.rule4
    array = @word.split('y')
    @word = "y#{array[1]}#{array[0]}ay"
  end
end
