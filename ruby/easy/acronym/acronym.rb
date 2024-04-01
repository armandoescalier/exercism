class Acronym
  def self.abbreviate(phrase)
    sanitized_phrase = phrase.upcase.gsub(/-/, ' ').split

    sanitized_phrase.map {|word| word.chars.first }.join
  end
end
