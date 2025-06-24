# frozen_string_literal: true

class PigLatin
  def self.translate(word)
    apply_rules(word)
  end

  def self.apply_rules(word)
    if starts_with_vowel_or_special?(word)
      rule1(word)
    elsif starts_with_consonant_and_contains_qu?(word)
      rule3(word)
    elsif starts_with_consonant_and_contains_y?(word)
      rule4(word)
    else
      rule2(word)
    end
  end

  def self.starts_with_vowel_or_special?(word)
    vowels = %w[a e i o u]
    special_prefixes = %w[xr yt]
    vowels.any? { |v| word.start_with?(v) } || special_prefixes.any? { |r| word.start_with?(r) }
  end

  def self.starts_with_consonant_and_contains_qu?(word)
    !starts_with_vowel?(word) && word.include?('qu')
  end

  def self.starts_with_consonant_and_contains_y?(word)
    !starts_with_vowel?(word) && word.include?('y')
  end

  def self.starts_with_vowel?(word)
    %w[a e i o u].any? { |v| word.start_with?(v) }
  end

  def self.rule1(word)
    "#{word}ay"
  end

  def self.rule2(word)
    vowels = %w[a e i o u]
    first_vowel = word.chars.find { |char| vowels.include?(char) }

    before_vowel, vowel, after_vowel = word.partition(first_vowel)
    "#{vowel}#{after_vowel}#{before_vowel}ay"
  end

  def self.rule3(word)
    before_qu, qu, after_qu = word.partition('qu')
    "#{after_qu}#{before_qu}#{qu}ay"
  end

  def self.rule4(word)
    before_y, y, after_y = word.partition('y')
    "#{y}#{after_y}#{before_y}ay"
  end
end
