class PigLatin
  def self.translate(word)
    @word = word
    rules
  end

  private

  def self.rules
    vowels = ["a","e","i","o","u"]
    rule_1 = ["xr","yt"]

    case
    # start with vocal or "xr" or "yt"
    when vowels.any? { |v| @word.start_with?(v) } || rule_1.any? { |r| @word.start_with?(r) }
      rule1
    when !vowels.any? { |v| @word.start_with?(v) } && @word.include?("qu")
      rule3
    when !vowels.any? { |v| @word.start_with?(v) } && @word.include?("y")
      rule4
    when !vowels.any? { |v| @word.start_with?(v) }
      rule2
    end
  end

  def self.rule1
    @word = "#{@word}ay"
  end

  def self.rule2
    vowels = ["a","e","i","o","u"]

    index_of_first_vowel = @word.chars.index { |char| vowels.include?(char) }
    consonant_cluster = @word[0...index_of_first_vowel]
    rest_of_word = @word[index_of_first_vowel..]

    @word = "#{rest_of_word}#{consonant_cluster}ay"
  end

  def self.rule3
    array = @word.split("qu")
    @word = "#{array[1]}#{array[0]}quay"
  end

  def self.rule4
    array = @word.split("y")
    @word = "y#{array[1]}#{array[0]}ay"
  end
end