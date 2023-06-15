# frozen_string_literal: true

class Bob
  def self.hey(remark)
    sanitized_remark = remark.strip

    if sanitized_remark.empty?
      'Fine. Be that way!'
    elsif only_caps?(sanitized_remark) && question?(sanitized_remark)
      "Calm down, I know what I'm doing!"
    elsif question?(sanitized_remark)
      'Sure.'
    elsif only_caps?(sanitized_remark)
      'Whoa, chill out!'
    else
      'Whatever.'
    end
  end

  def self.only_caps?(string)
    string == string.upcase && string.scan(/[A-Z]/).any?
  end

  def self.question?(string)
    string.end_with?('?')
  end
end
